# Настройка In-App Purchases

## Отладка и исправление проблем

### Проверка текущего состояния

1. **Проверьте логи в консоли:**
   ```bash
   flutter run --debug
   ```
   Ищите сообщения:
   - `[PurchaseService] Store available: true/false`
   - `[PurchaseService] Products loaded: ...`
   - `[OnboardingFinalScreen] Debug products: ...`

2. **Проверьте ID продуктов в коде:**
   - В `lib/services/purchase_service.dart`: `tarot_ai_monthly`, `tarot_ai_yearly`
   - В `lib/screens/onboarding_final_screen.dart`: те же ID

### Пошаговая инструкция по исправлению

#### Шаг 1: Проверьте настройки в Google Play Console

1. Войдите в [Google Play Console](https://play.google.com/console)
2. Выберите ваше приложение
3. Перейдите в **Monetize** → **Products** → **Subscriptions**
4. Убедитесь, что созданы продукты с ID:
   - `tarot_ai_monthly`
   - `tarot_ai_yearly`
5. Проверьте статус продуктов (должны быть "Active")
6. Убедитесь, что цены установлены

#### Шаг 2: Проверьте настройки в App Store Connect

1. Войдите в [App Store Connect](https://appstoreconnect.apple.com)
2. Выберите ваше приложение
3. Перейдите в **Features** → **In-App Purchases**
4. Убедитесь, что созданы продукты с ID:
   - `tarot_ai_monthly`
   - `tarot_ai_yearly`
5. Проверьте статус продуктов (должны быть "Ready to Submit" или "Approved")
6. Убедитесь, что цены установлены

#### Шаг 3: Проверьте тестовые аккаунты

**Android:**
1. В Google Play Console → **Setup** → **License Testing**
2. Добавьте ваш email как тестовый аккаунт
3. На устройстве войдите в Google Play с этим аккаунтом

**iOS:**
1. В App Store Connect → **Users and Access**
2. Создайте Sandbox тестер аккаунт
3. На устройстве войдите в App Store с этим аккаунтом

#### Шаг 4: Проверьте билд приложения

1. Убедитесь, что используете правильный bundle ID:
   - Android: `com.tarotaiapp.com`
   - iOS: `com.tarotaiapp.com`

2. Проверьте, что в `android/app/build.gradle.kts`:
   ```kotlin
   applicationId = "com.tarotaiapp.com"
   ```

3. Проверьте, что в `ios/Runner/Info.plist`:
   ```xml
   <key>CFBundleIdentifier</key>
   <string>$(PRODUCT_BUNDLE_IDENTIFIER)</string>
   ```

#### Шаг 5: Проверьте подписи приложения

**Android:**
1. Убедитесь, что используете правильный keystore
2. Проверьте, что SHA-1 отпечаток добавлен в Google Play Console

**iOS:**
1. Убедитесь, что используете правильный provisioning profile
2. Проверьте, что App ID настроен для in-app purchases

#### Шаг 6: Тестирование

1. **Очистите кэш приложения:**
   ```bash
   flutter clean
   flutter pub get
   ```

2. **Пересоберите приложение:**
   ```bash
   flutter build apk --debug  # для Android
   flutter build ios --debug  # для iOS
   ```

3. **Установите на устройство и протестируйте**

### Частые проблемы и решения

#### Проблема: "Store not available"
**Решение:**
- Проверьте интернет-соединение
- Убедитесь, что Google Play Services обновлены (Android)
- Проверьте, что App Store доступен (iOS)

#### Проблема: "Products not found"
**Решение:**
- Проверьте правильность ID продуктов
- Убедитесь, что продукты активны в консолях
- Подождите 24 часа после создания продуктов

#### Проблема: "Purchase failed"
**Решение:**
- Проверьте тестовые аккаунты
- Убедитесь, что аккаунт не имеет активных подписок
- Проверьте, что платежный метод настроен

#### Проблема: "Billing unavailable"
**Решение:**
- Проверьте, что приложение подписано правильно
- Убедитесь, что SHA-1 отпечаток добавлен в Google Play Console
- Проверьте, что приложение опубликовано в тестовом канале

### Команды для отладки

```bash
# Очистка и пересборка
flutter clean
flutter pub get
flutter build apk --debug

# Запуск с подробными логами
flutter run --debug --verbose

# Проверка зависимостей
flutter doctor
flutter pub deps
```

### Проверка в коде

Добавьте эти отладочные вызовы в `lib/screens/onboarding_final_screen.dart`:

```dart
void _debugProducts() {
  print('[OnboardingFinalScreen] Debug products:');
  print('[OnboardingFinalScreen] Monthly product: ${_purchaseService.monthlyProduct?.id} - ${_purchaseService.monthlyProduct?.price}');
  print('[OnboardingFinalScreen] Yearly product: ${_purchaseService.yearlyProduct?.id} - ${_purchaseService.yearlyProduct?.price}');
  print('[OnboardingFinalScreen] Store available: ${_purchaseService.isAvailable}');
  print('[OnboardingFinalScreen] Loading: ${_purchaseService.isLoading}');
  print('[OnboardingFinalScreen] Error: ${_purchaseService.errorMessage}');
}
```

## Google Play Console

### 1. Создание продуктов
1. Войдите в [Google Play Console](https://play.google.com/console)
2. Выберите ваше приложение
3. Перейдите в **Monetize** → **Products** → **Subscriptions**
4. Создайте два продукта:

#### Месячная подписка
- **Product ID**: `tarot_ai_monthly`
- **Name**: "Tarot AI Monthly Premium"
- **Description**: "Unlimited access to all tarot features for 1 month"
- **Price**: Установите цену (например, $4.99)
- **Billing period**: 1 month

#### Годовая подписка
- **Product ID**: `tarot_ai_yearly`
- **Name**: "Tarot AI Yearly Premium"
- **Description**: "Unlimited access to all tarot features for 1 year"
- **Price**: Установите цену (например, $39.99)
- **Billing period**: 1 year

### 2. Настройка тестирования
1. Перейдите в **Setup** → **License Testing**
2. Добавьте тестовые аккаунты Google Play
3. В **Internal Testing** добавьте тестовые аккаунты

### 3. Публикация
1. Создайте релиз в **Internal Testing**
2. Загрузите APK с поддержкой in-app purchases
3. Протестируйте покупки с тестовыми аккаунтами

## App Store Connect

### 1. Создание продуктов
1. Войдите в [App Store Connect](https://appstoreconnect.apple.com)
2. Выберите ваше приложение
3. Перейдите в **Features** → **In-App Purchases**
4. Создайте два продукта:

#### Месячная подписка
- **Product ID**: `tarot_ai_monthly`
- **Reference Name**: "Tarot AI Monthly Premium"
- **Product Type**: Auto-Renewable Subscription
- **Subscription Group**: Создайте новую группу "Tarot AI Premium"
- **Subscription Duration**: 1 Month
- **Price**: Установите цену

#### Годовая подписка
- **Product ID**: `tarot_ai_yearly`
- **Reference Name**: "Tarot AI Yearly Premium"
- **Product Type**: Auto-Renewable Subscription
- **Subscription Group**: Та же группа "Tarot AI Premium"
- **Subscription Duration**: 1 Year
- **Price**: Установите цену

### 2. Настройка локализации
Для каждого продукта добавьте:
- **Display Name**: Название на разных языках
- **Description**: Описание на разных языках
- **Review Information**: Информация для ревью

### 3. Настройка тестирования
1. Перейдите в **Users and Access**
2. Добавьте тестовые аккаунты Sandbox
3. В **TestFlight** добавьте тестовые аккаунты

### 4. Публикация
1. Создайте билд в **TestFlight**
2. Загрузите IPA с поддержкой in-app purchases
3. Протестируйте покупки с Sandbox аккаунтами

## Тестирование

### Android
1. Установите приложение на устройство с тестовым аккаунтом
2. Войдите в Google Play с тестовым аккаунтом
3. Попробуйте совершить покупку
4. Проверьте, что подписка активируется

### iOS
1. Установите приложение через TestFlight
2. Войдите в App Store с Sandbox аккаунтом
3. Попробуйте совершить покупку
4. Проверьте, что подписка активируется

## Важные моменты

### Безопасность
- В продакшене обязательно реализуйте серверную верификацию покупок
- Не храните чувствительные данные локально
- Используйте серверные чеки для подтверждения покупок

### Пользовательский опыт
- Добавьте возможность восстановления покупок
- Показывайте четкую информацию о ценах
- Обрабатывайте ошибки покупок
- Добавьте возможность отмены подписки

### Соответствие правилам
- Следуйте [Google Play Policy](https://play.google.com/about/developer-content-policy/)
- Следуйте [App Store Review Guidelines](https://developer.apple.com/app-store/review/guidelines/)
- Обеспечьте прозрачность цен и условий

## Коды ошибок

### Android
- `BILLING_UNAVAILABLE`: Биллинг недоступен
- `ITEM_NOT_OWNED`: Товар не куплен
- `ITEM_UNAVAILABLE`: Товар недоступен
- `USER_CANCELED`: Пользователь отменил покупку

### iOS
- `SKErrorPaymentCancelled`: Платеж отменен
- `SKErrorPaymentInvalid`: Недействительный платеж
- `SKErrorPaymentNotAllowed`: Платежи не разрешены
- `SKErrorStoreProductNotAvailable`: Товар недоступен

## Дополнительные ресурсы

- [Google Play Billing Library](https://developer.android.com/google/play/billing)
- [StoreKit Framework](https://developer.apple.com/documentation/storekit)
- [Flutter in_app_purchase](https://pub.dev/packages/in_app_purchase)
- [Google Play Console Help](https://support.google.com/googleplay/android-developer)
- [App Store Connect Help](https://help.apple.com/app-store-connect/) 