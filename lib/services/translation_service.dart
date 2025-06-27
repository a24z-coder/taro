import 'dart:async';
import 'package:cloud_functions/cloud_functions.dart';

class TranslationService {
  final FirebaseFunctions _functions = FirebaseFunctions.instanceFor(region: 'europe-west1');

  Future<String> getTranslatedText({
    required String text,
    required String targetLanguageCode,
    required bool isTarotReading,
  }) async {
    try {
      final HttpsCallable callable = _functions.httpsCallable('getOpenAiTranslation');
      final HttpsCallableResult result = await callable.call<Map<String, dynamic>>({
        'prompt': text,
        'targetLanguage': targetLanguageCode,
      });

      final data = result.data as Map<String, dynamic>;
      if (data.containsKey('translation')) {
        return data['translation'];
      } else {
        throw Exception('Translation not found in response');
      }
    } on FirebaseFunctionsException catch (e) {
      print('Firebase Functions Exception: ${e.code} - ${e.message}');
      throw Exception('Failed to translate: ${e.message}');
    } catch (e) {
      print('Generic Exception in TranslationService: $e');
      throw Exception('Failed to translate: $e');
    }
  }
} 