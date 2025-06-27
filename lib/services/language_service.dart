import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

String normalizeLangCode(String code) {
  if (code == 'en') return 'en-US';
  if (code == 'ru') return 'ru-RU';
  if (code == 'nl') return 'nl-NL';
  return code;
}

class LanguageService extends ChangeNotifier {
  static final LanguageService _instance = LanguageService._internal();
  factory LanguageService() => _instance;
  LanguageService._internal();

  String _currentLanguageCode = 'ru-RU';
  String get currentLanguageCode => _currentLanguageCode;
  
  // Кэш для SharedPreferences
  SharedPreferences? _prefs;
  
  Future<SharedPreferences> get _prefsInstance async {
    _prefs ??= await SharedPreferences.getInstance();
    return _prefs!;
  }

  Future<void> loadLanguage() async {
    try {
      final prefs = await _prefsInstance;
      final savedLang = prefs.getString('language_code');
      if (savedLang != null) {
        _currentLanguageCode = normalizeLangCode(savedLang);
        notifyListeners();
      }
    } catch (error) {
      debugPrint('Error loading language: $error');
    }
  }

  Future<void> setLanguage(String code) async {
    try {
      final normalized = normalizeLangCode(code);
      if (_currentLanguageCode != normalized) {
        _currentLanguageCode = normalized;
        final prefs = await _prefsInstance;
        await prefs.setString('language_code', normalized);
        notifyListeners();
      }
    } catch (error) {
      debugPrint('Error setting language: $error');
    }
  }
} 