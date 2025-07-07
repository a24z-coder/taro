import 'package:tarot_ai/services/purchase_service.dart';

class SubscriptionUtils {
  static final PurchaseService _purchaseService = PurchaseService();
  
  /// Проверяет, активна ли подписка пользователя
  static bool isSubscriptionActive() {
    return _purchaseService.isSubscriptionActive();
  }
  
  /// Проверяет, нужно ли показывать рекламу
  /// Возвращает true, если рекламу НЕ нужно показывать (есть активная подписка)
  static bool shouldHideAds() {
    return isSubscriptionActive();
  }
  
  /// Проверяет, нужно ли показывать рекламу
  /// Возвращает true, если рекламу нужно показывать (нет активной подписки)
  static bool shouldShowAds() {
    return !isSubscriptionActive();
  }
} 