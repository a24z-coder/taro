import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserService extends ChangeNotifier {
  static final UserService _instance = UserService._internal();
  factory UserService() => _instance;
  UserService._internal();

  String _userName = '';
  String get userName => _userName;
  
  // Кэш для SharedPreferences
  SharedPreferences? _prefs;
  
  Future<SharedPreferences> get _prefsInstance async {
    _prefs ??= await SharedPreferences.getInstance();
    return _prefs!;
  }

  Future<void> loadUserName() async {
    try {
      final prefs = await _prefsInstance;
      final savedName = prefs.getString('user_name');
      if (savedName != null && savedName != _userName) {
        _userName = savedName;
        notifyListeners();
      }
    } catch (error) {
      debugPrint('Error loading user name: $error');
    }
  }

  Future<void> setUserName(String name) async {
    try {
      if (_userName != name) {
        _userName = name;
        final prefs = await _prefsInstance;
        await prefs.setString('user_name', name);
        notifyListeners();
      }
    } catch (error) {
      debugPrint('Error setting user name: $error');
    }
  }
} 