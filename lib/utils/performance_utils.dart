import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PerformanceUtils {
  static SharedPreferences? _prefs;
  
  // Кэшированный экземпляр SharedPreferences
  static Future<SharedPreferences> get prefsInstance async {
    _prefs ??= await SharedPreferences.getInstance();
    return _prefs!;
  }
  
  // Предварительная загрузка критических изображений
  static Future<void> preloadCriticalImages(BuildContext context) async {
    try {
      await Future.wait([
        precacheImage(const AssetImage('assets/images/main-2.jpg'), context),
        precacheImage(const AssetImage('assets/images/logo.png'), context),
        precacheImage(const AssetImage('assets/images/ellipse.png'), context),
      ]);
    } catch (error) {
      debugPrint('Error preloading critical images: $error');
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
    return Image.asset(
      assetPath,
      width: width,
      height: height,
      fit: fit,
      cacheWidth: width.toInt(),
      cacheHeight: height.toInt(),
      errorBuilder: (context, error, stackTrace) {
        return errorWidget ?? Container(
          width: width,
          height: height,
          color: Colors.grey[300],
          child: const Icon(Icons.image_not_supported),
        );
      },
      frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
        if (wasSynchronouslyLoaded) return child;
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
    try {
      return await operation();
    } catch (error) {
      debugPrint('Safe async operation error: $error');
      return null;
    }
  }
  
  // Проверка доступности памяти
  static bool shouldOptimizeImages() {
    // В продакшене всегда оптимизируем
    return true;
  }
} 