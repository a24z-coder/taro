import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'l10n/app_localizations.dart';
import 'screens/main_screen.dart';
import 'screens/onboarding_screen.dart';
import 'utils/font_utils.dart';
import 'services/language_service.dart';
import 'services/purchase_service.dart';
import 'dart:ui' as ui;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:stack_appodeal_flutter/stack_appodeal_flutter.dart';
import 'package:tarot_ai/services/notification_service.dart';
import 'package:tarot_ai/services/journal_service.dart';
import 'dart:io';
import 'firebase_options.dart';
import 'package:provider/provider.dart';
import 'screens/journal_screen.dart';
import 'package:flutter/widgets.dart';

final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();

void main() async {
  debugPrint('[MAIN] main() called');
  final stopwatch = Stopwatch()..start();
  WidgetsFlutterBinding.ensureInitialized();

  debugPrint('[MAIN] Starting ConsentService initialization');
  try {
    // await ConsentService().initialize();
    debugPrint('[MAIN] ConsentService initialization skipped');
  } catch (e, st) {
    debugPrint('[MAIN] ConsentService initialization error: $e\n$st');
  }

  debugPrint('[MAIN] Starting Appodeal initialization');
  String appodealKey = Platform.isIOS
      ? '080e9752a8c6f8d4e59b0d8ec827c3f023b7399747fbfd2d'
      : '831db310114a046936b1b0192bab53bfbc2a2eab7aca01e6';

  try {
    // Включаем тестовый режим для отладки
    await Appodeal.setTesting(true);
    debugPrint('[MAIN] Appodeal testing mode enabled');
    // Включаем подробный лог Appodeal
    await Appodeal.setLogLevel(Appodeal.LogLevelVerbose);
    debugPrint('[MAIN] Appodeal verbose log enabled');
    await Appodeal.initialize(
      appKey: appodealKey,
      adTypes: [
        AppodealAdType.Interstitial,
        AppodealAdType.Banner,
        AppodealAdType.RewardedVideo,
      ],
    );
    debugPrint('[MAIN] Appodeal initialized successfully');
    
    // Принудительно кэшируем Interstitial
    await Appodeal.cache(AppodealAdType.Interstitial);
    debugPrint('[MAIN] Appodeal Interstitial cache requested');
  } catch (e, st) {
    debugPrint('[MAIN] Appodeal initialization error: $e\n$st');
  }

  debugPrint('[MAIN] Starting PurchaseService initialization');
  try {
    // Если есть отдельная инициализация PurchaseService, добавьте её сюда
    debugPrint('[MAIN] PurchaseService initialized successfully');
  } catch (e, st) {
    debugPrint('[MAIN] PurchaseService initialization error: $e\n$st');
  }

  debugPrint('[MAIN] Starting JournalService initialization');
  try {
    await JournalService().initialize();
    debugPrint('[MAIN] JournalService initialized successfully');
  } catch (e, st) {
    debugPrint('[MAIN] JournalService initialization error: $e\n$st');
  }

  debugPrint('[MAIN] Running app...');
  runApp(const MyAppWrapper());
  debugPrint('[MAIN] App launched in \\${stopwatch.elapsedMilliseconds}ms');
}

class MyAppWrapper extends StatefulWidget {
  const MyAppWrapper({super.key});
  @override
  State<MyAppWrapper> createState() => _MyAppWrapperState();
}

class _MyAppWrapperState extends State<MyAppWrapper> {
  @override
  void initState() {
    super.initState();
    debugPrint('[MyAppWrapper] initState');
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('[MyAppWrapper] build');
    return const MyApp();
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    debugPrint('[MyApp] initState');
    LanguageService().addListener(_onLangChanged);
    debugPrint('[MyApp] LanguageService listener added');
  }
  
  @override
  void dispose() {
    debugPrint('[MyApp] dispose');
    LanguageService().removeListener(_onLangChanged);
    super.dispose();
  }
  
  void _onLangChanged() {
    debugPrint('[MyApp] _onLangChanged called');
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('[MyApp] build');
    final stopwatch = Stopwatch()..start();
    
    try {
      final languageCode = LanguageService().currentLanguageCode;
      debugPrint('[MyApp] Language code: $languageCode');
      
      final fontFamily = fontFamilyForLang(languageCode);
      debugPrint('[MyApp] Font family: $fontFamily');
      
      final locale = _localeFromCode(languageCode);
      debugPrint('[MyApp] Locale: $locale');
      
      final app = ChangeNotifierProvider(
        create: (context) => JournalService(),
        child: MaterialApp(
          title: 'Tarot AI',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
            fontFamily: fontFamily,
          ),
          locale: locale,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: AppLocalizations.supportedLocales,
          home: const SplashScreen(),
          routes: {
            '/journal': (context) => const ReflectionSummaryScreen(),
          },
        ),
      );
      
      debugPrint('[MyApp] build completed, elapsed: ${stopwatch.elapsedMilliseconds}ms');
      return app;
    } catch (e, stack) {
      debugPrint('[MyApp] ERROR in build(): $e\n$stack');
      rethrow;
    }
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _navigated = false;
  bool _isLoading = true;
  final Stopwatch _stopwatch = Stopwatch();

  @override
  void initState() {
    super.initState();
    debugPrint('[SplashScreen] initState');
    _stopwatch.start();
    _startInit();
  }

  void _startInit() async {
    debugPrint('[SplashScreen] _startInit: start');
    try {
      await Future.delayed(const Duration(seconds: 1));
      debugPrint('[SplashScreen] _startInit: after min delay, elapsed: ${_stopwatch.elapsedMilliseconds}ms');
      
      if (!mounted) {
        debugPrint('[SplashScreen] _startInit: not mounted, returning');
        return;
      }
      
      _initAsync().then((_) {
        debugPrint('[SplashScreen] _initAsync finished, _navigated=$_navigated, mounted=$mounted, elapsed: ${_stopwatch.elapsedMilliseconds}ms');
        if (!_navigated && mounted) {
          setState(() {
            _isLoading = false;
          });
          _navigate();
        }
      }).catchError((error, stack) {
        debugPrint('[SplashScreen] ERROR in _initAsync: $error\n$stack');
        if (!_navigated && mounted) {
          setState(() {
            _isLoading = false;
          });
          _navigate(force: true);
        }
      });
      
      Future.delayed(const Duration(seconds: 5), () {
        debugPrint('[SplashScreen] 5s timeout, _navigated=$_navigated, mounted=$mounted, elapsed: ${_stopwatch.elapsedMilliseconds}ms');
        if (!_navigated && mounted) {
          setState(() {
            _isLoading = false;
          });
          _navigate(force: true);
        }
      });
    } catch (e, stack) {
      debugPrint('[SplashScreen] ERROR in _startInit: $e\n$stack');
    }
  }

  Future<void> _initAsync() async {
    debugPrint('[SplashScreen] _initAsync: start');
    final initStopwatch = Stopwatch()..start();
    
    try {
      // Запускаем все тяжёлые операции параллельно
      debugPrint('[SplashScreen] Starting parallel initialization');
      await Future.wait([
        _initializeFirebase(),
        _initializeAppData(),
        _initializePurchaseService(),
        _initializeNotificationService(),
      ]);
      debugPrint('[SplashScreen] Parallel initialization completed, elapsed: ${initStopwatch.elapsedMilliseconds}ms');
    } catch (error, stack) {
      debugPrint('[SplashScreen] Initialization error: $error\n$stack');
      if (!_navigated && mounted) {
        _navigate(force: true);
      }
    } finally {
      debugPrint('[SplashScreen] _initAsync: finished, elapsed: ${_stopwatch.elapsedMilliseconds}ms');
    }
  }

  // Инициализация Firebase
  Future<void> _initializeFirebase() async {
    final stopwatch = Stopwatch()..start();
    debugPrint('[SplashScreen] _initializeFirebase: start');
    
    try {
      // Проверяем, не инициализирован ли уже Firebase
      if (Firebase.apps.isEmpty) {
        await Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform,
        );
        debugPrint('[SplashScreen] Firebase initialized successfully, elapsed: ${stopwatch.elapsedMilliseconds}ms');
      } else {
        debugPrint('[SplashScreen] Firebase already initialized, elapsed: ${stopwatch.elapsedMilliseconds}ms');
      }
    } catch (error, stack) {
      debugPrint('[SplashScreen] Firebase initialization error: $error\n$stack');
    }
  }

  // Инициализация данных приложения
  Future<void> _initializeAppData() async {
    final stopwatch = Stopwatch()..start();
    debugPrint('[SplashScreen] _initializeAppData: start');
    
    try {
      final prefs = await SharedPreferences.getInstance();
      debugPrint('[SplashScreen] SharedPreferences loaded, elapsed: ${stopwatch.elapsedMilliseconds}ms');
      
      // Загружаем язык из LanguageService (который определит системный язык или сохраненный)
      await LanguageService().loadLanguage();
      String lang = LanguageService().currentLanguageCode;
      debugPrint('[SplashScreen] Language loaded: $lang');
      debugPrint('[SplashScreen] LanguageService setLanguage done, elapsed: ${stopwatch.elapsedMilliseconds}ms');
      
      bool onboardingComplete = prefs.getBool('onboarding_complete') ?? false;
      debugPrint('[SplashScreen] onboardingComplete: $onboardingComplete, elapsed: ${stopwatch.elapsedMilliseconds}ms');
      
      if (!_navigated && mounted) {
        _navigate(onboardingComplete: onboardingComplete);
      }
    } catch (error, stack) {
      debugPrint('[SplashScreen] ERROR in _initializeAppData: $error\n$stack');
    }
  }

  // Инициализация сервиса покупок
  Future<void> _initializePurchaseService() async {
    final stopwatch = Stopwatch()..start();
    debugPrint('[SplashScreen] _initializePurchaseService: start');
    
    try {
      await PurchaseService().initialize();
      debugPrint('[SplashScreen] PurchaseService initialized, elapsed: ${stopwatch.elapsedMilliseconds}ms');
    } catch (error, stack) {
      debugPrint('[SplashScreen] PurchaseService initialization error: $error\n$stack');
    }
  }

  // Инициализация сервиса уведомлений
  Future<void> _initializeNotificationService() async {
    final stopwatch = Stopwatch()..start();
    debugPrint('[SplashScreen] _initializeNotificationService: start');
    
    try {
      await NotificationService().initialize();
      debugPrint('[SplashScreen] NotificationService initialized, elapsed: ${stopwatch.elapsedMilliseconds}ms');
    } catch (error, stack) {
      debugPrint('[SplashScreen] NotificationService initialization error: $error\n$stack');
    }
  }

  void _navigate({bool onboardingComplete = false, bool force = false}) {
    if (_navigated) {
      debugPrint('[SplashScreen] _navigate: already navigated, skipping');
      return;
    }
    
    _navigated = true;
    debugPrint('[SplashScreen] _navigate: onboardingComplete=$onboardingComplete, force=$force, elapsed: ${_stopwatch.elapsedMilliseconds}ms');
    
    try {
      final targetScreen = onboardingComplete ? const MainScreen() : const OnboardingScreen();
      debugPrint('[SplashScreen] _navigate: target screen = ${onboardingComplete ? 'MainScreen' : 'OnboardingScreen'}');
      
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => targetScreen,
        ),
      );
      debugPrint('[SplashScreen] _navigate: pushReplacement called');
    } catch (error, stack) {
      debugPrint('[SplashScreen] ERROR in _navigate: $error\n$stack');
    }
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('[SplashScreen] build called');
    final buildStopwatch = Stopwatch()..start();
    
    try {
      final scaffold = Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/images/main-2.jpg',
                fit: BoxFit.cover,
                // Добавляем кэширование изображения только если размеры больше 0
                cacheWidth: MediaQuery.of(context).size.width > 0 ? MediaQuery.of(context).size.width.toInt() : null,
                cacheHeight: MediaQuery.of(context).size.height > 0 ? MediaQuery.of(context).size.height.toInt() : null,
                // Добавляем обработку ошибок
                errorBuilder: (context, error, stackTrace) {
                  debugPrint('[SplashScreen] Image error: $error');
                  return Container(
                    color: const Color(0xFF153842),
                    child: const Center(
                      child: Icon(
                        Icons.image_not_supported,
                        color: Colors.white,
                        size: 64,
                      ),
                    ),
                  );
                },
              ),
            ),
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                    width: 120,
                    height: 120,
                    fit: BoxFit.contain,
                    // Добавляем обработку ошибок
                    errorBuilder: (context, error, stackTrace) {
                      debugPrint('[SplashScreen] Logo error: $error');
                      return Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          color: Colors.white.withValues(alpha: 0.1),
                          borderRadius: BorderRadius.circular(60),
                        ),
                        child: const Icon(
                          Icons.auto_stories,
                          color: Colors.white,
                          size: 60,
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 32),
                  if (_isLoading)
                    const CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                    ),
                ],
              ),
            ),
          ],
        ),
      );
      
      debugPrint('[SplashScreen] build completed, elapsed: ${buildStopwatch.elapsedMilliseconds}ms');
      return scaffold;
    } catch (e, stack) {
      debugPrint('[SplashScreen] ERROR in build(): $e\n$stack');
      rethrow;
    }
  }
}

Locale _localeFromCode(String? code) {
  debugPrint('[MAIN] _localeFromCode: $code');
  if (code == null || code.isEmpty) {
    debugPrint('[MAIN] _localeFromCode: code is null or empty, returning en');
    return const Locale('en');
  }
  // Для русского языка возвращаем ru
  if (code.startsWith('ru')) {
    debugPrint('[MAIN] _localeFromCode: returning ru locale');
    return const Locale('ru');
  }
  final parts = code.split('-');
  if (parts.length == 2) {
    final locale = Locale(parts[0], parts[1]);
    debugPrint('[MAIN] _localeFromCode: returning $locale');
    return locale;
  }
  final locale = Locale(parts[0]);
  debugPrint('[MAIN] _localeFromCode: returning $locale');
  return locale;
}
