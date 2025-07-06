import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserService extends ChangeNotifier {
  static final UserService _instance = UserService._internal();
  factory UserService() => _instance;
  UserService._internal() {
    debugPrint('[UserService] Singleton instance created');
  }

  String _userName = '';
  String get userName {
    return _userName;
  }
  
  // Кэш для SharedPreferences
  SharedPreferences? _prefs;
  
  Future<SharedPreferences> get _prefsInstance async {
    if (_prefs == null) {
      debugPrint('[UserService] Creating SharedPreferences instance');
      _prefs = await SharedPreferences.getInstance();
      debugPrint('[UserService] SharedPreferences instance created');
    }
    return _prefs!;
  }

  Future<void> loadUserName() async {
    debugPrint('[UserService] loadUserName: start');
    final stopwatch = Stopwatch()..start();
    
    try {
      final prefs = await _prefsInstance;
      debugPrint('[UserService] loadUserName: prefs loaded, elapsed: ${stopwatch.elapsedMilliseconds}ms');
      
      final savedName = prefs.getString('user_name');
      
      if (savedName != null && savedName.isNotEmpty && savedName != _userName) {
        _userName = savedName;
        notifyListeners();
      }
      
      debugPrint('[UserService] loadUserName: completed, elapsed: ${stopwatch.elapsedMilliseconds}ms');
    } catch (error, stack) {
      debugPrint('[UserService] ERROR in loadUserName: $error\n$stack');
    }
  }

  Future<void> setUserName(String name) async {
    final stopwatch = Stopwatch()..start();
    
    try {
      if (_userName != name) {
        _userName = name;
        
        final prefs = await _prefsInstance;
        debugPrint('[UserService] setUserName: prefs loaded, elapsed: ${stopwatch.elapsedMilliseconds}ms');
        
        await prefs.setString('user_name', name);
        debugPrint('[UserService] setUserName: name saved to prefs');
        
        notifyListeners();
        debugPrint('[UserService] setUserName: listeners notified');
      } else {
        debugPrint('[UserService] setUserName: name already set to $name, skipping update');
      }
      
      debugPrint('[UserService] setUserName: completed, elapsed: ${stopwatch.elapsedMilliseconds}ms');
    } catch (error, stack) {
      debugPrint('[UserService] ERROR in setUserName: $error\n$stack');
    }
  }
} 