# Настройка In-App Purchases

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