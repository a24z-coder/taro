import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tarot_ai/models/journal_entry.dart';
import 'package:tarot_ai/services/translation_service.dart';
import 'package:tarot_ai/services/language_service.dart';
import 'package:tarot_ai/utils/card_translations.dart';
import 'package:tarot_ai/utils/prompt_templates.dart'; // Added import for promptTemplates

class JournalService extends ChangeNotifier {
  static final JournalService _instance = JournalService._internal();
  factory JournalService() => _instance;
  JournalService._internal();

  static const String _journalEntriesKey = 'journal_entries';
  static const String _lastWeeklyAnalysisKey = 'last_weekly_analysis';
  static const String _currentSessionKey = 'current_session';
  static const String _sessionCompletedKey = 'session_completed';
  
  // Новый список ключей раскладов для прогресса
  static const List<String> _trackedSpreadKeys = [
    'card_of_the_day',
    'quick_reading',
    'three_cards',
    'five_cards',
    'celtic_cross',
    'love',
    'career_finance',
    'pros_cons',
    'monthly_forecast',
    'self_development',
  ];
  
  List<JournalEntry> _entries = [];
  List<String> _currentSessionEntryIds = []; // ID записей текущей сессии
  bool _isLoading = false;
  String? _errorMessage;
  int _progressVersion = 0; // Версия прогресса для принудительного обновления UI

  // Getters
  List<JournalEntry> get entries => List.unmodifiable(_entries);
  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;
  
  // Геттеры для прогресса
  int get currentSessionProgress => _currentSessionEntryIds.length;
  bool get isSessionCompleted => currentSessionProgress >= 7;
  List<String> get trackedSpreadKeys => List.unmodifiable(_trackedSpreadKeys);
  int get progressVersion => _progressVersion; // Геттер для версии прогресса
  
  // Кэш для SharedPreferences
  SharedPreferences? _prefs;
  
  Future<SharedPreferences> get _prefsInstance async {
    if (_prefs == null) {
      _prefs = await SharedPreferences.getInstance();
    }
    return _prefs!;
  }

  /// Инициализация сервиса
  Future<void> initialize() async {
    debugPrint('[JournalService] Initializing...');
    await loadEntries();
    await loadCurrentSession();
  }

  /// Загрузка всех записей
  Future<void> loadEntries() async {
    debugPrint('[JournalService] Loading entries...');
    _setLoading(true);
    
    try {
      final prefs = await _prefsInstance;
      final entriesJson = prefs.getString(_journalEntriesKey);
      
      if (entriesJson != null) {
        final List<dynamic> entriesList = json.decode(entriesJson);
        _entries = entriesList
            .map((entry) => JournalEntry.fromJson(entry))
            .toList();
        
        // Очищаем старые записи (старше 7 дней)
        final now = DateTime.now();
        _entries.removeWhere((e) => now.difference(e.date).inDays >= 7);
        // Сортируем по дате (новые сначала)
        _entries.sort((a, b) => b.date.compareTo(a.date));
        // Сохраняем очищенный список обратно
        await _saveToStorage();
      }
      
      debugPrint('[JournalService] Loaded ${_entries.length} entries');
      _setError(null);
    } catch (e) {
      debugPrint('[JournalService] Error loading entries: $e');
      _setError('Ошибка загрузки записей: $e');
    } finally {
      _setLoading(false);
    }
  }

  /// Загрузка текущей сессии
  Future<void> loadCurrentSession() async {
    debugPrint('[JournalService] Loading current session...');
    
    try {
      final prefs = await _prefsInstance;
      final sessionJson = prefs.getString(_currentSessionKey);
      
      if (sessionJson != null) {
        final List<dynamic> sessionList = json.decode(sessionJson);
        _currentSessionEntryIds = sessionList.cast<String>();
        debugPrint('[JournalService] Loaded session with ${_currentSessionEntryIds.length} entries');
      } else {
        _currentSessionEntryIds = [];
        debugPrint('[JournalService] No session found, starting new');
      }
    } catch (e) {
      debugPrint('[JournalService] Error loading session: $e');
      _currentSessionEntryIds = [];
    }
  }

  /// Сохранение текущей сессии
  Future<void> _saveCurrentSession() async {
    try {
      final prefs = await _prefsInstance;
      final sessionJson = json.encode(_currentSessionEntryIds);
      await prefs.setString(_currentSessionKey, sessionJson);
      debugPrint('[JournalService] Session saved with ${_currentSessionEntryIds.length} entries');
    } catch (e) {
      debugPrint('[JournalService] Error saving session: $e');
    }
  }

  /// Проверка, является ли расклад отслеживаемым по ключу
  bool isTrackedSpreadKey(String spreadKey) {
    return _trackedSpreadKeys.contains(spreadKey);
  }

  /// Получение записей текущей сессии
  List<JournalEntry> getCurrentSessionEntries() {
    return _entries.where((entry) => _currentSessionEntryIds.contains(entry.id)).toList();
  }

  /// Сброс текущей сессии
  Future<void> resetCurrentSession() async {
    debugPrint('[JournalService] Resetting current session');
    _currentSessionEntryIds.clear();
    await _saveCurrentSession();
    _progressVersion++; // Увеличиваем версию прогресса при сбросе
    notifyListeners();
  }

  /// Сохранение записи
  Future<bool> saveEntry(JournalEntry entry) async {
    debugPrint('[JournalService] Saving entry: ${entry.id}');
    
    try {
      // Проверяем, есть ли уже запись с таким ID
      final existingIndex = _entries.indexWhere((e) => e.id == entry.id);
      
      if (existingIndex >= 0) {
        // Обновляем существующую запись
        _entries[existingIndex] = entry;
      } else {
        // Добавляем новую запись
        _entries.add(entry);
        
        // Если это отслеживаемый расклад и сессия не завершена, добавляем в сессию
        if (isTrackedSpreadKey(_getEntrySpreadKey(entry)) && !isSessionCompleted) {
          _currentSessionEntryIds.add(entry.id);
          await _saveCurrentSession();
          _progressVersion++; // Увеличиваем версию при изменении сессии
          debugPrint('[JournalService] Added to session. Progress: ${currentSessionProgress}/7');
        }
      }
      
      // Очищаем старые записи (старше 7 дней)
      final now = DateTime.now();
      _entries.removeWhere((e) => now.difference(e.date).inDays >= 7);
      // Сортируем по дате
      _entries.sort((a, b) => b.date.compareTo(a.date));
      
      // Сохраняем в SharedPreferences
      await _saveToStorage();
      
      notifyListeners();
      debugPrint('[JournalService] Entry saved successfully');
      return true;
    } catch (e) {
      debugPrint('[JournalService] Error saving entry: $e');
      _setError('Ошибка сохранения записи: $e');
      return false;
    }
  }

  /// Удаление записи
  Future<bool> deleteEntry(String entryId) async {
    debugPrint('[JournalService] Deleting entry: $entryId');
    
    try {
      // Удаляем из списка записей
      _entries.removeWhere((entry) => entry.id == entryId);
      
      // Удаляем из текущей сессии
      final wasInSession = _currentSessionEntryIds.remove(entryId);
      if (wasInSession) {
        await _saveCurrentSession();
        _progressVersion++; // Увеличиваем версию при изменении сессии
        debugPrint('[JournalService] Removed from session. Progress: ${currentSessionProgress}/7');
      }
      
      // Сохраняем в SharedPreferences
      await _saveToStorage();
      
      notifyListeners();
      debugPrint('[JournalService] Entry deleted successfully');
      return true;
    } catch (e) {
      debugPrint('[JournalService] Error deleting entry: $e');
      _setError('Ошибка удаления записи: $e');
      return false;
    }
  }

  /// Получение записи по ID
  JournalEntry? getEntry(String entryId) {
    try {
      return _entries.firstWhere((entry) => entry.id == entryId);
    } catch (e) {
      return null;
    }
  }

  /// Добавление новой записи (алиас для saveEntry)
  Future<bool> addEntry(JournalEntry entry) async {
    return await saveEntry(entry);
  }

  /// Получение всех записей
  List<JournalEntry> getAllEntries() {
    return List.unmodifiable(_entries);
  }

  /// Получение записей за определенный период
  List<JournalEntry> getEntriesForPeriod(DateTime start, DateTime end) {
    return _entries.where((entry) {
      return entry.date.isAfter(start.subtract(const Duration(days: 1))) &&
             entry.date.isBefore(end.add(const Duration(days: 1)));
    }).toList();
  }

  /// Получение записей за последнюю неделю
  List<JournalEntry> getEntriesForLastWeek() {
    final now = DateTime.now();
    final weekAgo = now.subtract(const Duration(days: 7));
    return getEntriesForPeriod(weekAgo, now);
  }

  /// Получение записей за последний месяц
  List<JournalEntry> getEntriesForLastMonth() {
    final now = DateTime.now();
    final monthAgo = DateTime(now.year, now.month - 1, now.day);
    return getEntriesForPeriod(monthAgo, now);
  }

  /// Фильтрация записей по типу расклада
  List<JournalEntry> getEntriesBySpreadType(String spreadType) {
    return _entries.where((entry) => entry.spreadType == spreadType).toList();
  }

  /// Поиск записей по тексту
  List<JournalEntry> searchEntries(String query) {
    if (query.isEmpty) return _entries;
    
    final lowercaseQuery = query.toLowerCase();
    return _entries.where((entry) {
      return entry.spreadType.toLowerCase().contains(lowercaseQuery) ||
             entry.cards.any((card) => card.toLowerCase().contains(lowercaseQuery)) ||
             (entry.userNote?.toLowerCase().contains(lowercaseQuery) ?? false) ||
             (entry.aiInsight?.toLowerCase().contains(lowercaseQuery) ?? false);
    }).toList();
  }

  /// Генерация AI анализа для записи
  Future<String?> generateAiInsight(JournalEntry entry) async {
    debugPrint('[JournalService] Generating AI insight for entry: ${entry.id}');
    
    try {
      final translationService = TranslationService();
      final languageCode = LanguageService().currentLanguageCode;
      
      // Формируем промпт для AI
      final prompt = _buildInsightPrompt(entry, languageCode);
      
      final insight = await translationService.getTranslatedText(
        text: prompt,
        targetLanguageCode: languageCode,
        isTarotReading: true,
      );
      
      // Обновляем запись с AI анализом
      final updatedEntry = entry.copyWith(aiInsight: insight);
      await saveEntry(updatedEntry);
      
      debugPrint('[JournalService] AI insight generated successfully');
      return insight;
    } catch (e) {
      debugPrint('[JournalService] Error generating AI insight: $e');
      return null;
    }
  }

  /// Генерация еженедельного анализа
  Future<String?> generateWeeklyAnalysis() async {
    debugPrint('[JournalService] Generating weekly analysis...');
    
    try {
      final weeklyEntries = getEntriesForLastWeek();
      if (weeklyEntries.isEmpty) {
        debugPrint('[JournalService] No entries for weekly analysis');
        return null;
      }
      
      final translationService = TranslationService();
      final languageCode = LanguageService().currentLanguageCode;
      
      // Формируем промпт для еженедельного анализа
      final prompt = _buildWeeklyAnalysisPrompt(weeklyEntries, languageCode);
      
      final analysis = await translationService.getTranslatedText(
        text: prompt,
        targetLanguageCode: languageCode,
        isTarotReading: true,
      );
      
      // Сохраняем время последнего анализа
      final prefs = await _prefsInstance;
      await prefs.setString(_lastWeeklyAnalysisKey, DateTime.now().toIso8601String());
      
      debugPrint('[JournalService] Weekly analysis generated successfully');
      return analysis;
    } catch (e) {
      debugPrint('[JournalService] Error generating weekly analysis: $e');
      return null;
    }
  }

  /// Проверка, нужно ли генерировать еженедельный анализ
  Future<bool> shouldGenerateWeeklyAnalysis() async {
    try {
      final prefs = await _prefsInstance;
      final lastAnalysisString = prefs.getString(_lastWeeklyAnalysisKey);
      
      if (lastAnalysisString == null) return true;
      
      final lastAnalysis = DateTime.parse(lastAnalysisString);
      final now = DateTime.now();
      final difference = now.difference(lastAnalysis);
      
      // Генерируем анализ раз в неделю
      return difference.inDays >= 7;
    } catch (e) {
      debugPrint('[JournalService] Error checking weekly analysis: $e');
      return true;
    }
  }

  /// Сохранение в SharedPreferences
  Future<void> _saveToStorage() async {
    try {
      final prefs = await _prefsInstance;
      final entriesJson = json.encode(_entries.map((e) => e.toJson()).toList());
      await prefs.setString(_journalEntriesKey, entriesJson);
      debugPrint('[JournalService] Entries saved to storage');
    } catch (e) {
      debugPrint('[JournalService] Error saving to storage: $e');
      throw e;
    }
  }

  /// Формирование промпта для AI анализа записи
  String _buildInsightPrompt(JournalEntry entry, String languageCode) {
    final cardsText = entry.cards.join(', ');
    final noteText = entry.userNote ?? 'Заметка не добавлена';
    
    return '''
Проанализируй этот таро расклад и дай глубокое понимание:

Тип расклада: ${entry.spreadType}
Карты: $cardsText
Заметка пользователя: $noteText

Дай:
1. Общий анализ энергетики расклада
2. Ключевые темы и уроки
3. Практические рекомендации для самопознания
4. Что стоит развивать в себе
5. На что обратить внимание в ближайшее время

Будь вдохновляющим и поддерживающим. Пиши на языке пользователя.
''';
  }

  /// Формирование промпта для еженедельного анализа
  String _buildWeeklyAnalysisPrompt(List<JournalEntry> entries, String languageCode) {
    final entriesSummary = entries.map((entry) {
      return '${entry.date.day}.${entry.date.month}: ${entry.spreadType} - ${entry.cards.join(', ')}';
    }).join('\n');
    final totalEntries = entries.length;
    final spreadTypes = entries.map((e) => e.spreadType).toSet().join(', ');
    // Получаем шаблон для нужного языка
    final lang = languageCode.split('-').first;
    final template = promptTemplates[lang]?['journal_service_weekly_analysis_prompt'] ?? promptTemplates['en']!['journal_service_weekly_analysis_prompt']!;
    // Подставляем переменные
    return template
      .replaceAll('{totalEntries}', totalEntries.toString())
      .replaceAll('{entriesSummary}', entriesSummary)
      .replaceAll('{spreadTypes}', spreadTypes);
  }

  /// Установка состояния загрузки
  void _setLoading(bool loading) {
    _isLoading = loading;
    notifyListeners();
  }

  /// Установка ошибки
  void _setError(String? error) {
    _errorMessage = error;
    notifyListeners();
  }

  /// Очистка ошибки
  void clearError() {
    _setError(null);
  }

  /// Получение прогресса текущей сессии для отображения в UI
  Future<int> getCurrentSessionProgress() async {
    await loadCurrentSession(); // Обновляем данные сессии
    return currentSessionProgress;
  }

  /// Получение статистики
  Map<String, dynamic> getStatistics() {
    if (_entries.isEmpty) {
      return {
        'totalEntries': 0,
        'totalCards': 0,
        'mostUsedSpread': null,
        'mostFrequentCards': [],
        'averageEntriesPerWeek': 0,
      };
    }

    // Подсчет карт
    final cardCounts = <String, int>{};
    for (final entry in _entries) {
      for (final card in entry.cards) {
        cardCounts[card] = (cardCounts[card] ?? 0) + 1;
      }
    }

    // Подсчет типов раскладов
    final spreadCounts = <String, int>{};
    for (final entry in _entries) {
      spreadCounts[entry.spreadType] = (spreadCounts[entry.spreadType] ?? 0) + 1;
    }

    // Самые частые карты
    final sortedCards = cardCounts.entries.toList()
      ..sort((a, b) => b.value.compareTo(a.value));
    final mostFrequentCards = sortedCards.take(5).map((e) => e.key).toList();

    // Самый популярный расклад
    final sortedSpreads = spreadCounts.entries.toList()
      ..sort((a, b) => b.value.compareTo(a.value));
    final mostUsedSpread = sortedSpreads.isNotEmpty ? sortedSpreads.first.key : null;

    // Среднее количество записей в неделю
    final firstEntry = _entries.last.date;
    final lastEntry = _entries.first.date;
    final weeksDiff = lastEntry.difference(firstEntry).inDays / 7;
    final averageEntriesPerWeek = weeksDiff > 0 ? _entries.length / weeksDiff : _entries.length.toDouble();

    return {
      'totalEntries': _entries.length,
      'totalCards': _entries.fold(0, (sum, entry) => sum + entry.cards.length),
      'mostUsedSpread': mostUsedSpread,
      'mostFrequentCards': mostFrequentCards,
      'averageEntriesPerWeek': averageEntriesPerWeek,
    };
  }

  /// Получение spreadKey для записи (обратная совместимость)
  String _getEntrySpreadKey(JournalEntry entry) {
    if (entry.spreadKey.isNotEmpty) return entry.spreadKey;
    
    // Fallback: определяем по spreadType для старых записей
    final languageCode = LanguageService().currentLanguageCode;
    
    // Проверяем русские названия
    if (languageCode.startsWith('ru')) {
      switch (entry.spreadType) {
        case 'Карта дня': return 'card_of_day';
        case 'Быстрое гадание': return 'quick_reading';
        case '3 карты': return 'three_cards';
        case '5 карт': return 'five_cards';
        case 'Кельтский крест': return 'celtic_cross';
        case 'Любовь': return 'love';
        case 'Карьера и финансы': return 'career_finance';
        case 'Плюсы и минусы': return 'pros_cons';
        case 'Месячный прогноз': return 'monthly_forecast';
        case 'Саморазвитие': return 'self_development';
        default: return '';
      }
    } else {
      // Проверяем английские названия
      switch (entry.spreadType) {
        case 'Card of the Day': return 'card_of_day';
        case 'Quick Reading': return 'quick_reading';
        case '3 Cards': return 'three_cards';
        case '5 Cards': return 'five_cards';
        case 'Celtic Cross': return 'celtic_cross';
        case 'Love': return 'love';
        case 'Career & Finance': return 'career_finance';
        case 'Pros and Cons': return 'pros_cons';
        case 'Monthly Forecast': return 'monthly_forecast';
        case 'Self Development': return 'self_development';
        default: return '';
      }
    }
  }
} 