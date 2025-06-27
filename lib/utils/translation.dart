import '../services/language_service.dart';

// Пример словаря переводов (добавите свои позже)
final Map<String, Map<String, String>> translations = {
  'main_title': {
    'ru-RU': 'Гадай и изучай таро',
    'en-US': 'Divine and study tarot',
    // ... другие языки
  },
  // ... другие ключи
};

String tr(String key) {
  final lang = LanguageService().currentLanguageCode;
  if (translations.containsKey(key) && translations[key]!.containsKey(lang)) {
    return translations[key]![lang]!;
  }
  // fallback: если нет перевода — возвращаем ключ (или дефолтный язык)
  return translations[key]?["ru-RU"] ?? key;
} 