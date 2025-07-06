import 'dart:async';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class TranslationService {
  final FirebaseFunctions _functions = FirebaseFunctions.instanceFor(region: 'europe-west1');
  
  // Альтернативный вариант с дефолтным регионом
  // final FirebaseFunctions _functions = FirebaseFunctions.instance;
  
  // Тестовая функция для проверки подключения
  Future<Map<String, dynamic>> testConnection() async {
    print('[TranslationService] Testing connection...');
    try {
      final HttpsCallable callable = _functions.httpsCallable('testOpenAiConnection');
      final HttpsCallableResult result = await callable
          .call<Map<String, dynamic>>({})
          .timeout(const Duration(seconds: 10));
      
      print('[TranslationService] Test result: ${result.data}');
      return result.data as Map<String, dynamic>;
    } catch (e) {
      print('[TranslationService] Test error: $e');
      rethrow;
    }
  }

  // Простая тестовая функция для проверки перевода
  Future<String> testSimpleTranslation() async {
    print('[TranslationService] Testing simple translation...');
    try {
      final HttpsCallable callable = _functions.httpsCallable('getOpenAiTranslation');
      final HttpsCallableResult result = await callable
          .call<Map<String, dynamic>>({
            'prompt': 'Hello, test message',
            'targetLanguage': 'ru',
          })
          .timeout(const Duration(seconds: 30));
      
      print('[TranslationService] Simple test result: ${result.data}');
      final data = result.data as Map<String, dynamic>;
      return data['translation'] ?? 'No translation found';
    } catch (e) {
      print('[TranslationService] Simple test error: $e');
      rethrow;
    }
  }

  // Фильтрация мусора из ответа OpenAI
  String cleanOpenAiResponse(String text) {
    return text
        .replaceAll(RegExp(r'ColorMappinglub.*ltraSemantic.*'), '')
        .replaceAll(RegExp(r'ColorMappinglub.*'), '')
        .replaceAll(RegExp(r'ltraSemantic.*'), '')
        .trim();
  }

  Future<String> getTranslatedText({
    required String text,
    required String targetLanguageCode,
    required bool isTarotReading,
  }) async {
    print('[TranslationService] Starting translation request');
    print('[TranslationService] Text: $text');
    print('[TranslationService] Target language: $targetLanguageCode');
    print('[TranslationService] Is tarot reading: $isTarotReading');
    
    var connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == ConnectivityResult.none) {
      throw Exception('NO_INTERNET');
    }
    
    try {
      print('[TranslationService] Creating callable function');
      final HttpsCallable callable = _functions.httpsCallable('getOpenAiTranslation');
      
      print('[TranslationService] Calling function with data: {"prompt": "$text", "targetLanguage": "$targetLanguageCode"}');
      final HttpsCallableResult result = await callable
          .call<Map<String, dynamic>>({
            'prompt': text,
            'targetLanguage': targetLanguageCode,
          })
          .timeout(const Duration(seconds: 30)); // Увеличиваем timeout до 30 секунд для сложных раскладов

      print('[TranslationService] Function call completed');
      print('[TranslationService] Result data: ${result.data}');
      
      final data = result.data as Map<String, dynamic>;
      if (data.containsKey('translation')) {
        String cleaned = cleanOpenAiResponse(data['translation']);
        print('[TranslationService] Translation found: ' + cleaned);
        return cleaned;
      } else if (data.containsKey('response')) {
        // Если Firebase функция вернула ответ напрямую (без перевода)
        String cleaned = cleanOpenAiResponse(data['response']);
        print('[TranslationService] Direct response found: ' + cleaned);
        return cleaned;
      } else {
        print('[TranslationService] Translation not found in response');
        throw Exception('Translation not found in response');
      }
    } on TimeoutException {
      print('[TranslationService] Timeout: No response from OpenAI function');
      throw Exception('Timeout: No response from OpenAI function');
    } on FirebaseFunctionsException catch (e) {
      print('[TranslationService] Firebase Functions Exception: ${e.code} - ${e.message}');
      throw Exception('Failed to translate: ${e.message}');
    } catch (e) {
      print('[TranslationService] Generic Exception: $e');
      throw Exception('Failed to translate: $e');
    }
  }
} 