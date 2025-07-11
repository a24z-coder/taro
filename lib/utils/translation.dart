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
  if (translations.containsKey(key) && translations[key]!.containsKey(LanguageService().currentLanguageCode)) {
    return translations[key]![LanguageService().currentLanguageCode]!;
  }
  // fallback: если нет перевода — возвращаем ключ (или дефолтный язык)
  return translations[key]?["ru-RU"] ?? key;
}

String interpolatePrompt(String template, Map<String, String> values) {
  var result = template;
  values.forEach((key, value) {
    result = result.replaceAll('{$key}', value);
  });
  return result;
} 