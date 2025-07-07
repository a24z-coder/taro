import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';

class NotificationService {
  static final NotificationService _instance = NotificationService._internal();
  factory NotificationService() => _instance;
  NotificationService._internal();

  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

  Future<void> initialize() async {
    try {
      // Запрашиваем разрешение на уведомления
      NotificationSettings settings = await _firebaseMessaging.requestPermission(
        alert: true,
        announcement: false,
        badge: true,
        carPlay: false,
        criticalAlert: false,
        provisional: false,
        sound: true,
      );

      if (kDebugMode) {
        print('User granted permission: ${settings.authorizationStatus}');
      }

      // Получаем FCM токен
      String? token = await _firebaseMessaging.getToken();
      if (kDebugMode) {
        print('FCM Token: $token');
      }

      // Настраиваем обработчики сообщений
      FirebaseMessaging.onMessage.listen((RemoteMessage message) {
        if (kDebugMode) {
          print('Got a message whilst in the foreground!');
          print('Message data: ${message.data}');
          
          if (message.notification != null) {
            print('Message also contained a notification: ${message.notification}');
          }
        }
        
        // Здесь можно добавить показ локального уведомления
        _showLocalNotification(message);
      });

      // Обработка сообщений когда приложение в фоне
      FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
        if (kDebugMode) {
          print('A new onMessageOpenedApp event was published!');
          print('Message data: ${message.data}');
        }
        
        // Здесь можно добавить навигацию к определенному экрану
        _handleMessageNavigation(message);
      });

      // Обработка сообщений когда приложение закрыто
      RemoteMessage? initialMessage = await _firebaseMessaging.getInitialMessage();
      if (initialMessage != null) {
        if (kDebugMode) {
          print('App opened from terminated state with message: ${initialMessage.data}');
        }
        
        // Здесь можно добавить навигацию к определенному экрану
        _handleMessageNavigation(initialMessage);
      }

    } catch (e) {
      if (kDebugMode) {
        print('Error initializing notification service: $e');
      }
    }
  }

  void _showLocalNotification(RemoteMessage message) {
    // Здесь можно добавить показ локального уведомления
    // используя flutter_local_notifications или другой пакет
  }

  void _handleMessageNavigation(RemoteMessage message) {
    // Здесь можно добавить логику навигации на основе данных сообщения
    // Например, переход к определенному экрану
  }

  Future<String?> getToken() async {
    return await _firebaseMessaging.getToken();
  }

  Future<void> deleteToken() async {
    await _firebaseMessaging.deleteToken();
  }
} 