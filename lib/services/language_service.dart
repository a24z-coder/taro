import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:ui' as ui;

String normalizeLangCode(String code) {
  debugPrint('[LanguageService] normalizeLangCode: $code');
  // Нормализация: приводим к нижнему регистру и заменяем подчеркивания на дефисы
  return code.toLowerCase().replaceAll('_', '-');
}

class LanguageService extends ChangeNotifier {
  static final LanguageService _instance = LanguageService._internal();
  factory LanguageService() => _instance;
  LanguageService._internal() {
    debugPrint('[LanguageService] Singleton instance created');
  }

  String _currentLanguageCode = '';
  String get currentLanguageCode {
    debugPrint('[LanguageService] currentLanguageCode getter: $_currentLanguageCode');
    return _currentLanguageCode;
  }
  
  // Кэш для SharedPreferences
  SharedPreferences? _prefs;
  
  Future<SharedPreferences> get _prefsInstance async {
    if (_prefs == null) {
      debugPrint('[LanguageService] Creating SharedPreferences instance');
      _prefs = await SharedPreferences.getInstance();
      debugPrint('[LanguageService] SharedPreferences instance created');
    }
    return _prefs!;
  }

  Future<void> loadLanguage() async {
    debugPrint('[LanguageService] loadLanguage: start');
    final stopwatch = Stopwatch()..start();
    
    try {
      final prefs = await _prefsInstance;
      debugPrint('[LanguageService] loadLanguage: prefs loaded, elapsed: ${stopwatch.elapsedMilliseconds}ms');
      
      final savedLang = prefs.getString('language_code');
      debugPrint('[LanguageService] loadLanguage: saved language = $savedLang');
      
      String targetLang;
      
      if (savedLang != null) {
        // Если пользователь уже выбирал язык, используем его
        targetLang = normalizeLangCode(savedLang);
        debugPrint('[LanguageService] loadLanguage: using saved language: $targetLang');
      } else {
        // Если язык не выбран, берем системный язык
        final systemLocale = ui.window.locale;
        final systemLang = systemLocale.toString();
        debugPrint('[LanguageService] loadLanguage: no saved language found, using system locale: $systemLang');
        
        // Проверяем, поддерживается ли системный язык
        if (_isLanguageSupported(systemLang)) {
          targetLang = normalizeLangCode(systemLang);
        } else {
          // Если системный язык не поддерживается, используем русский как fallback
          targetLang = 'ru-RU';
          debugPrint('[LanguageService] loadLanguage: system language not supported, using Russian fallback');
        }
        
        await prefs.setString('language_code', targetLang);
      }
      
      if (_currentLanguageCode != targetLang) {
        _currentLanguageCode = targetLang;
        debugPrint('[LanguageService] loadLanguage: language updated to $targetLang');
        notifyListeners();
        debugPrint('[LanguageService] loadLanguage: listeners notified');
      }
      
      debugPrint('[LanguageService] loadLanguage: completed, elapsed: ${stopwatch.elapsedMilliseconds}ms');
    } catch (error, stack) {
      debugPrint('[LanguageService] ERROR in loadLanguage: $error\n$stack');
    }
  }

  Future<void> setLanguage(String code) async {
    debugPrint('[LanguageService] setLanguage: start with code = $code');
    final stopwatch = Stopwatch()..start();
    
    try {
      final normalized = normalizeLangCode(code);
      debugPrint('[LanguageService] setLanguage: normalized code = $normalized');
      
      // Проверяем, поддерживается ли язык
      if (!_isLanguageSupported(normalized)) {
        debugPrint('[LanguageService] setLanguage: unsupported language requested ($normalized), using Russian fallback');
        return; // Игнорируем неподдерживаемые языки
      }
      
      if (_currentLanguageCode != normalized) {
        debugPrint('[LanguageService] setLanguage: updating language from $_currentLanguageCode to $normalized');
        _currentLanguageCode = normalized;
        
        final prefs = await _prefsInstance;
        debugPrint('[LanguageService] setLanguage: prefs loaded, elapsed: ${stopwatch.elapsedMilliseconds}ms');
        
        await prefs.setString('language_code', normalized);
        debugPrint('[LanguageService] setLanguage: language saved to prefs');
        
        // Уведомляем слушателей о смене языка
        notifyListeners();
        debugPrint('[LanguageService] setLanguage: listeners notified');
        
        // Добавляем небольшую задержку для обновления UI
        await Future.delayed(const Duration(milliseconds: 100));
        debugPrint('[LanguageService] setLanguage: UI update delay completed');
      } else {
        debugPrint('[LanguageService] setLanguage: language already set to $normalized, skipping update');
      }
      
      debugPrint('[LanguageService] setLanguage: completed, elapsed: ${stopwatch.elapsedMilliseconds}ms');
    } catch (error, stack) {
      debugPrint('[LanguageService] ERROR in setLanguage: $error\n$stack');
    }
  }
  
  bool _isLanguageSupported(String code) {
    final normalized = normalizeLangCode(code);
    // Список поддерживаемых языков
    final supportedLanguages = [
      'af', 'sq', 'am', 'ar', 'hy-am', 'az-az', 'bn-bd', 'eu-es', 'be', 'bg', 'my-mm', 'ca',
      'zh-hk', 'zh-cn', 'zh-tw', 'hr', 'cs-cz', 'da-dk', 'nl-nl', 'en-au', 'en-ca', 'en-us', 
      'en-gb', 'en-in', 'en-sg', 'en-za', 'et', 'fil', 'fi-fi', 'fr-ca', 'fr-fr', 'gl-es', 
      'ka-ge', 'de-de', 'el-gr', 'gu', 'iw-il', 'hi-in', 'hu-hu', 'is-is', 'id', 'it-it', 
      'ja-jp', 'kn-in', 'kk', 'km-kh', 'ko-kr', 'ky-kg', 'lo-la', 'lv', 'lt', 'mk-mk', 
      'ms-my', 'ms', 'ml-in', 'mr-in', 'mn-mn', 'ne-np', 'no-no', 'fa', 'fa-ae', 'fa-af', 
      'fa-ir', 'pl-pl', 'pt-br', 'pt-pt', 'pa', 'ro', 'rm', 'ru-ru', 'sr', 'si-lk', 'sk', 
      'sl', 'es-419', 'es-es', 'es-us', 'sw', 'sv-se', 'ta-in', 'te-in', 'th', 'tr-tr', 
      'uk', 'ur', 'vi', 'zu'
    ];
    return supportedLanguages.contains(normalized);
  }
} 