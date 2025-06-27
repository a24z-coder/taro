import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'l10n/app_localizations.dart';
import 'screens/main_screen.dart';
import 'screens/onboarding_screen.dart';
import 'utils/font_utils.dart';
import 'services/language_service.dart';
import 'dart:ui' as ui;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyAppWrapper());
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
    LanguageService().addListener(_onLangChanged);
  }
  
  @override
  void dispose() {
    LanguageService().removeListener(_onLangChanged);
    super.dispose();
  }
  
  void _onLangChanged() => setState(() {});
  
  @override
  Widget build(BuildContext context) {
    return const MyApp();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tarot AI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: fontFamilyForLang(LanguageService().currentLanguageCode),
      ),
      locale: _localeFromCode(LanguageService().currentLanguageCode),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      home: const SplashScreen(),
    );
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
    await Future.delayed(const Duration(seconds: 1));
    debugPrint('[SplashScreen] _startInit: after min delay');
    if (!mounted) return;
    _initAsync().then((_) {
      debugPrint('[SplashScreen] _initAsync finished, _navigated=$_navigated, mounted=$mounted');
      if (!_navigated && mounted) {
        setState(() {
          _isLoading = false;
        });
        _navigate();
      }
    });
    Future.delayed(const Duration(seconds: 5), () {
      debugPrint('[SplashScreen] 5s timeout, _navigated=$_navigated, mounted=$mounted');
      if (!_navigated && mounted) {
        setState(() {
          _isLoading = false;
        });
        _navigate(force: true);
      }
    });
  }

  Future<void> _initAsync() async {
    debugPrint('[SplashScreen] _initAsync: start');
    try {
      // Запускаем все тяжёлые операции параллельно
      await Future.wait([
        _initializeFirebase(),
        _initializeAppData(),
      ]);
    } catch (error) {
      debugPrint('[SplashScreen] Initialization error: $error');
      if (!_navigated && mounted) {
        _navigate(force: true);
      }
    } finally {
      debugPrint('[SplashScreen] _initAsync: finished, elapsed: [32m${_stopwatch.elapsedMilliseconds}ms[0m');
    }
  }

  // Инициализация Firebase
  Future<void> _initializeFirebase() async {
    try {
      await Firebase.initializeApp();
      debugPrint('[SplashScreen] Firebase initialized successfully');
    } catch (error) {
      debugPrint('[SplashScreen] Firebase initialization error: $error');
    }
  }

  // Инициализация данных приложения
  Future<void> _initializeAppData() async {
    final prefs = await SharedPreferences.getInstance();
    debugPrint('[SplashScreen] SharedPreferences loaded');
    
    String? lang = prefs.getString('language_code');
    if (lang == null) {
      final systemLocale = ui.PlatformDispatcher.instance.locale;
      lang = systemLocale.toLanguageTag();
      debugPrint('[SplashScreen] No lang in prefs, using system: $lang');
    } else {
      debugPrint('[SplashScreen] Lang from prefs: $lang');
    }
    
    await LanguageService().setLanguage(lang);
    debugPrint('[SplashScreen] LanguageService setLanguage done');
    
    bool onboardingComplete = prefs.getBool('onboarding_complete') ?? false;
    debugPrint('[SplashScreen] onboardingComplete: $onboardingComplete');
    
    if (!_navigated && mounted) {
      _navigate(onboardingComplete: onboardingComplete);
    }
  }

  void _navigate({bool onboardingComplete = false, bool force = false}) {
    if (_navigated) return;
    _navigated = true;
    debugPrint('[SplashScreen] _navigate: onboardingComplete=$onboardingComplete, force=$force, elapsed: [32m${_stopwatch.elapsedMilliseconds}ms[0m');
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => onboardingComplete ? const MainScreen() : const OnboardingScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/main-2.jpg',
              fit: BoxFit.cover,
              // Добавляем кэширование изображения
              cacheWidth: MediaQuery.of(context).size.width.toInt(),
              cacheHeight: MediaQuery.of(context).size.height.toInt(),
              // Добавляем обработку ошибок
              errorBuilder: (context, error, stackTrace) {
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
  }
}

Locale _localeFromCode(String code) {
  final parts = code.split('-');
  if (parts.length == 2) {
    return Locale(parts[0], parts[1]);
  }
  return Locale(parts[0]);
}
