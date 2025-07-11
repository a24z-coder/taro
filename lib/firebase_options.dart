// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDGjntH32-cVp860IsHcMt9rFDZh-n1Rkg',
    appId: '1:140390121261:web:75792730de7f9847e95da4',
    messagingSenderId: '140390121261',
    projectId: 'tarot-ai-app-com',
    authDomain: 'tarot-ai-app-com.firebaseapp.com',
    storageBucket: 'tarot-ai-app-com.firebasestorage.app',
    measurementId: 'G-V30FHQHZWP',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDcWQMTDqI9fKp7aVxAffDhGaZ90OumQQQ',
    appId: '1:140390121261:android:0b8a4172f6e0f529e95da4',
    messagingSenderId: '140390121261',
    projectId: 'tarot-ai-app-com',
    storageBucket: 'tarot-ai-app-com.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCOO_y48vaFTbgCJVDASb5Fylt-ZiATbk8',
    appId: '1:140390121261:ios:0506af45f6c7b79be95da4',
    messagingSenderId: '140390121261',
    projectId: 'tarot-ai-app-com',
    storageBucket: 'tarot-ai-app-com.firebasestorage.app',
    iosBundleId: 'com.tarotaiapp.com',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCOO_y48vaFTbgCJVDASb5Fylt-ZiATbk8',
    appId: '1:140390121261:ios:e0f6c0155ae8c3e7e95da4',
    messagingSenderId: '140390121261',
    projectId: 'tarot-ai-app-com',
    storageBucket: 'tarot-ai-app-com.firebasestorage.app',
    iosBundleId: 'com.example.tarotAi',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDGjntH32-cVp860IsHcMt9rFDZh-n1Rkg',
    appId: '1:140390121261:web:1148afe2f638c097e95da4',
    messagingSenderId: '140390121261',
    projectId: 'tarot-ai-app-com',
    authDomain: 'tarot-ai-app-com.firebaseapp.com',
    storageBucket: 'tarot-ai-app-com.firebasestorage.app',
    measurementId: 'G-JBX0XFH82K',
  );

}