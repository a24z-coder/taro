import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:in_app_review/in_app_review.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ReviewService {
  static final ReviewService _instance = ReviewService._internal();
  factory ReviewService() => _instance;
  ReviewService._internal();

  static const String _lastReviewRequestKey = 'last_review_request';
  static const String _reviewRequestCountKey = 'review_request_count';
  static const String _appLaunchCountKey = 'app_launch_count';
  static const String _hasRatedKey = 'has_rated';
  
  // Минимальное количество запусков перед первым запросом
  static const int _minLaunchesBeforeFirstRequest = 5;
  
  // Минимальный интервал между запросами (в днях)
  static const int _minDaysBetweenRequests = 30;
  
  // Максимальное количество запросов
  static const int _maxRequestCount = 3;

  final InAppReview _inAppReview = InAppReview.instance;

  /// Увеличивает счетчик запусков приложения
  Future<void> incrementLaunchCount() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      int currentCount = prefs.getInt(_appLaunchCountKey) ?? 0;
      await prefs.setInt(_appLaunchCountKey, currentCount + 1);
      debugPrint('[ReviewService] Launch count: ${currentCount + 1}');
    } catch (e) {
      debugPrint('[ReviewService] Error incrementing launch count: $e');
    }
  }

  /// Проверяет, можно ли показать запрос отзыва
  Future<bool> shouldRequestReview() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      
      // Проверяем, не оценил ли пользователь уже приложение
      bool hasRated = prefs.getBool(_hasRatedKey) ?? false;
      if (hasRated) {
        debugPrint('[ReviewService] User has already rated the app');
        return false;
      }

      // Проверяем количество запусков
      int launchCount = prefs.getInt(_appLaunchCountKey) ?? 0;
      if (launchCount < _minLaunchesBeforeFirstRequest) {
        debugPrint('[ReviewService] Not enough launches: $launchCount < $_minLaunchesBeforeFirstRequest');
        return false;
      }

      // Проверяем количество предыдущих запросов
      int requestCount = prefs.getInt(_reviewRequestCountKey) ?? 0;
      if (requestCount >= _maxRequestCount) {
        debugPrint('[ReviewService] Max request count reached: $requestCount');
        return false;
      }

      // Проверяем время с последнего запроса
      int lastRequestTime = prefs.getInt(_lastReviewRequestKey) ?? 0;
      if (lastRequestTime > 0) {
        int daysSinceLastRequest = (DateTime.now().millisecondsSinceEpoch - lastRequestTime) ~/ (1000 * 60 * 60 * 24);
        if (daysSinceLastRequest < _minDaysBetweenRequests) {
          debugPrint('[ReviewService] Too soon since last request: $daysSinceLastRequest days');
          return false;
        }
      }

      // Проверяем доступность in-app review
      bool isAvailable = await _inAppReview.isAvailable();
      if (!isAvailable) {
        debugPrint('[ReviewService] In-app review not available');
        return false;
      }

      debugPrint('[ReviewService] Should request review: true');
      return true;
    } catch (e) {
      debugPrint('[ReviewService] Error checking should request review: $e');
      return false;
    }
  }

  /// Показывает запрос отзыва
  Future<bool> requestReview() async {
    try {
      debugPrint('[ReviewService] Requesting review...');
      
      final prefs = await SharedPreferences.getInstance();
      
      // Сохраняем время запроса
      await prefs.setInt(_lastReviewRequestKey, DateTime.now().millisecondsSinceEpoch);
      
      // Увеличиваем счетчик запросов
      int currentCount = prefs.getInt(_reviewRequestCountKey) ?? 0;
      await prefs.setInt(_reviewRequestCountKey, currentCount + 1);
      
      // Показываем in-app review
      await _inAppReview.requestReview();
      
      debugPrint('[ReviewService] Review requested successfully');
      return true;
    } catch (e) {
      debugPrint('[ReviewService] Error requesting review: $e');
      return false;
    }
  }

  /// Открывает страницу приложения в магазине
  Future<bool> openStoreListing() async {
    try {
      debugPrint('[ReviewService] Opening store listing...');
      await _inAppReview.openStoreListing();
      debugPrint('[ReviewService] Store listing opened successfully');
      return true;
    } catch (e) {
      debugPrint('[ReviewService] Error opening store listing: $e');
      return false;
    }
  }

  /// Отмечает, что пользователь оценил приложение
  Future<void> markAsRated() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool(_hasRatedKey, true);
      debugPrint('[ReviewService] App marked as rated');
    } catch (e) {
      debugPrint('[ReviewService] Error marking as rated: $e');
    }
  }

  /// Сбрасывает статистику (для тестирования)
  Future<void> resetStatistics() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove(_lastReviewRequestKey);
      await prefs.remove(_reviewRequestCountKey);
      await prefs.remove(_appLaunchCountKey);
      await prefs.remove(_hasRatedKey);
      debugPrint('[ReviewService] Statistics reset');
    } catch (e) {
      debugPrint('[ReviewService] Error resetting statistics: $e');
    }
  }

  /// Получает статистику для отладки
  Future<Map<String, dynamic>> getStatistics() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return {
        'launchCount': prefs.getInt(_appLaunchCountKey) ?? 0,
        'requestCount': prefs.getInt(_reviewRequestCountKey) ?? 0,
        'hasRated': prefs.getBool(_hasRatedKey) ?? false,
        'lastRequestTime': prefs.getInt(_lastReviewRequestKey) ?? 0,
        'isAvailable': await _inAppReview.isAvailable(),
      };
    } catch (e) {
      debugPrint('[ReviewService] Error getting statistics: $e');
      return {};
    }
  }

  /// Показывает запрос отзыва с fallback на магазин
  Future<void> requestReviewWithFallback() async {
    try {
      debugPrint('[ReviewService] Requesting review with fallback...');
      
      // Сначала пробуем in-app review
      bool success = await requestReview();
      
      // Если не получилось, открываем магазин
      if (!success) {
        debugPrint('[ReviewService] In-app review failed, opening store...');
        await openStoreListing();
      }
    } catch (e) {
      debugPrint('[ReviewService] Error in requestReviewWithFallback: $e');
      // В случае ошибки все равно пробуем открыть магазин
      try {
        await openStoreListing();
      } catch (e2) {
        debugPrint('[ReviewService] Error opening store as fallback: $e2');
      }
    }
  }
} 