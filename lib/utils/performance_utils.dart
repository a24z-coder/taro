import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PerformanceUtils {
  static SharedPreferences? _prefs;
  
  // Кэшированный экземпляр SharedPreferences
  static Future<SharedPreferences> get prefsInstance async {
    if (_prefs == null) {
      debugPrint('[PerformanceUtils] Creating SharedPreferences instance');
      _prefs = await SharedPreferences.getInstance();
      debugPrint('[PerformanceUtils] SharedPreferences instance created');
    } else {
      debugPrint('[PerformanceUtils] Using cached SharedPreferences instance');
    }
    return _prefs!;
  }
  
  // Предварительная загрузка критических изображений
  static Future<void> preloadCriticalImages(BuildContext context) async {
    debugPrint('[PerformanceUtils] preloadCriticalImages: start');
    final stopwatch = Stopwatch()..start();
    
    try {
      debugPrint('[PerformanceUtils] preloadCriticalImages: starting parallel preload');
      await Future.wait([
        precacheImage(const AssetImage('assets/images/main-2.jpg'), context),
        precacheImage(const AssetImage('assets/images/logo.png'), context),
        precacheImage(const AssetImage('assets/images/ellipse.png'), context),
      ]);
      debugPrint('[PerformanceUtils] preloadCriticalImages: completed, elapsed: ${stopwatch.elapsedMilliseconds}ms');
    } catch (error, stack) {
      debugPrint('[PerformanceUtils] ERROR in preloadCriticalImages: $error\n$stack');
    }
  }
  
  // Оптимизированная загрузка изображения с кэшированием
  static Widget optimizedImage({
    required String assetPath,
    required double width,
    required double height,
    BoxFit fit = BoxFit.cover,
    Widget? placeholder,
    Widget? errorWidget,
  }) {
    debugPrint('[PerformanceUtils] optimizedImage: $assetPath (${width.toInt()}x${height.toInt()})');
    
    return Image.asset(
      assetPath,
      width: width,
      height: height,
      fit: fit,
      cacheWidth: width.toInt(),
      cacheHeight: height.toInt(),
      errorBuilder: (context, error, stackTrace) {
        debugPrint('[PerformanceUtils] Image error for $assetPath: $error');
        return errorWidget ?? Container(
          width: width,
          height: height,
          color: Colors.grey[300],
          child: const Icon(Icons.image_not_supported),
        );
      },
      frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
        if (wasSynchronouslyLoaded) {
          debugPrint('[PerformanceUtils] Image $assetPath loaded synchronously');
          return child;
        }
        return AnimatedOpacity(
          opacity: frame == null ? 0 : 1,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
          child: child,
        );
      },
    );
  }
  
  // Оптимизированная загрузка данных
  static Future<T?> safeAsyncOperation<T>(Future<T> Function() operation) async {
    debugPrint('[PerformanceUtils] safeAsyncOperation: start');
    final stopwatch = Stopwatch()..start();
    
    try {
      final result = await operation();
      debugPrint('[PerformanceUtils] safeAsyncOperation: completed successfully, elapsed: ${stopwatch.elapsedMilliseconds}ms');
      return result;
    } catch (error, stack) {
      debugPrint('[PerformanceUtils] ERROR in safeAsyncOperation: $error\n$stack');
      return null;
    }
  }
  
  // Проверка доступности памяти
  static bool shouldOptimizeImages() {
    // В продакшене всегда оптимизируем
    debugPrint('[PerformanceUtils] shouldOptimizeImages: returning true');
    return true;
  }
} 