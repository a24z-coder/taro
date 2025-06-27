import 'package:shared_preferences/shared_preferences.dart';

class StorageService {
  static const String _lastCardKey = 'last_card';
  static const String _lastCardNameKey = 'last_card_name';
  static const String _lastCardTimeKey = 'last_card_time';

  static Future<void> saveCardOfTheDay(String cardImage, String cardName) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_lastCardKey, cardImage);
    await prefs.setString(_lastCardNameKey, cardName);
    await prefs.setString(_lastCardTimeKey, DateTime.now().toIso8601String());
  }

  static Future<Map<String, dynamic>?> getLastCard() async {
    final prefs = await SharedPreferences.getInstance();
    final lastCardImage = prefs.getString(_lastCardKey);
    final lastCardName = prefs.getString(_lastCardNameKey);
    final lastCardTime = prefs.getString(_lastCardTimeKey);

    if (lastCardImage == null || lastCardName == null || lastCardTime == null) {
      return null;
    }

    final lastTime = DateTime.parse(lastCardTime);
    final now = DateTime.now();
    final difference = now.difference(lastTime);

    // Если прошло больше 24 часов, возвращаем null
    if (difference.inHours >= 24) {
      return null;
    }

    return {
      'cardImage': lastCardImage,
      'cardName': lastCardName,
      'lastTime': lastTime,
    };
  }

  static Future<bool> canGetNewCard() async {
    final prefs = await SharedPreferences.getInstance();
    final lastCardTime = prefs.getString(_lastCardTimeKey);

    if (lastCardTime == null) {
      return true;
    }

    final lastTime = DateTime.parse(lastCardTime);
    final now = DateTime.now();
    final difference = now.difference(lastTime);

    return difference.inHours >= 24;
  }
} 