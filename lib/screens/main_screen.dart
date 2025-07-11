import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tarot_ai/screens/card_of_the_day_screen.dart';
import 'package:tarot_ai/screens/classic_spreads_screen.dart';
import 'package:tarot_ai/screens/thematic_spreads_screen.dart';
import 'package:tarot_ai/screens/card_combination_screen.dart';
import 'package:tarot_ai/screens/card_meanings_screen.dart';
import 'package:tarot_ai/screens/language_selection_onboarding_screen.dart';
import 'package:tarot_ai/screens/quick_reading_screen.dart';
import 'package:tarot_ai/screens/notification_settings_screen.dart';
import 'package:tarot_ai/screens/contact_us_screen.dart';
import 'package:tarot_ai/screens/fun_spread_screen.dart';
import 'package:tarot_ai/screens/purchase_love_screen.dart';
import 'package:tarot_ai/screens/journal_screen.dart';
import 'package:tarot_ai/services/user_service.dart';
import 'package:tarot_ai/services/language_service.dart';
import 'package:tarot_ai/utils/font_utils.dart';
import 'package:tarot_ai/utils/performance_utils.dart';
import 'package:tarot_ai/l10n/app_localizations.dart';
import 'package:in_app_review/in_app_review.dart';
import 'package:tarot_ai/utils/card_translations.dart';
import 'package:stack_appodeal_flutter/stack_appodeal_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tarot_ai/services/translation_service.dart';
import 'dart:io';
import 'package:tarot_ai/services/review_service.dart';
import 'package:tarot_ai/utils/subscription_utils.dart';
import 'package:tarot_ai/services/journal_service.dart';
import 'package:tarot_ai/widgets/session_completed_dialog.dart';
import 'package:flutter/widgets.dart';
import '../main.dart';
import 'package:tarot_ai/utils/prompt_templates.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with RouteAware {
  String _userName = '';
  String? _cardOfTheDayName;
  String? _cardOfTheDayImage;
  bool _isLoading = true;
  final Stopwatch _stopwatch = Stopwatch();
  int _navIndex = 0; // 0 - Расклады, 1 - Дневник, 2 - Меню

  @override
  void initState() {
    super.initState();
    debugPrint('[MainScreen] initState');
    _stopwatch.start();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      debugPrint('[MainScreen] addPostFrameCallback');
      _loadData();
      // Подписываемся на RouteObserver
      final ModalRoute? route = ModalRoute.of(context);
      if (route is PageRoute) {
        routeObserver.subscribe(this, route);
      }
    });
    // Добавляем слушатель на JournalService для обновления прогресса
    JournalService().addListener(_onJournalChanged);
  }

  @override
  void dispose() {
    debugPrint('[MainScreen] dispose');
    // Отписываемся от RouteObserver
    routeObserver.unsubscribe(this);
    // Удаляем слушатель
    JournalService().removeListener(_onJournalChanged);
    super.dispose();
  }

  void _onJournalChanged() {
    if (mounted) setState(() {});
  }

  @override
  void didPopNext() {
    // Этот метод вызывается, когда возвращаемся на этот экран
    debugPrint('[MainScreen] didPopNext: updating state');
    setState(() {});
  }

  Future<void> _loadData() async {
    debugPrint('[MainScreen] _loadData: start');
    final loadStopwatch = Stopwatch()..start();
    
    try {
      debugPrint('[MainScreen] _loadData: starting parallel data loading');
      await Future.wait([
        _loadUserName(),
        _loadCardOfTheDay(),
      ]);
      debugPrint('[MainScreen] _loadData: parallel loading completed, elapsed: ${loadStopwatch.elapsedMilliseconds}ms');
      
    } catch (error, stack) {
      debugPrint('[MainScreen] ERROR in _loadData: $error\n$stack');
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
        debugPrint('[MainScreen] _loadData: finished, elapsed: ${_stopwatch.elapsedMilliseconds}ms');
      } else {
        debugPrint('[MainScreen] _loadData: not mounted, skipping setState');
      }
    }
  }

  /// Проверка и показ диалога о завершении сессии
  Future<void> _checkAndShowSessionDialog() async {
    try {
      final journalService = JournalService();
      final progress = await journalService.getCurrentSessionProgress();
      
      if (progress >= 7 && mounted) {
        debugPrint('[MainScreen] Session completed, showing dialog');
        await _showSessionCompletedDialog();
      }
    } catch (e) {
      debugPrint('[MainScreen] Error checking session: $e');
    }
  }

  /// Показ диалога о завершении сессии
  Future<void> _showSessionCompletedDialog() async {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => SessionCompletedDialog(
        onViewAnalysis: () {
          Navigator.of(context).pop(); // Закрываем диалог
          Navigator.of(context).pushNamed('/journal'); // Переходим в журнал
        },
        onReset: () async {
          Navigator.of(context).pop(); // Закрываем диалог
          await JournalService().resetCurrentSession(); // Сбрасываем сессию
          setState(() {}); // Обновляем UI
        },
      ),
    );
  }

  /// Проверка, можно ли открыть расклад (не заблокирован ли сессией)
  Future<bool> _canOpenSpread() async {
    try {
      final journalService = JournalService();
      final progress = await journalService.getCurrentSessionProgress();
      
      if (progress >= 7) {
        debugPrint('[MainScreen] Session completed, showing dialog instead of opening spread');
        await _showSessionCompletedDialog();
        return false;
      }
      return true;
    } catch (e) {
      debugPrint('[MainScreen] Error checking if can open spread: $e');
      return true; // В случае ошибки разрешаем открыть
    }
  }

  Future<void> _loadUserName() async {
    debugPrint('[MainScreen] _loadUserName: start');
    final stopwatch = Stopwatch()..start();
    
    try {
      final result = await PerformanceUtils.safeAsyncOperation(() async {
        debugPrint('[MainScreen] _loadUserName: calling UserService.loadUserName()');
        await UserService().loadUserName();
        final userName = UserService().userName;
        debugPrint('[MainScreen] _loadUserName: UserService.userName = $userName');
        return userName;
      });
      
      if (result != null && mounted) {
        setState(() {
          _userName = result;
        });
        debugPrint('[MainScreen] _loadUserName: loaded=$_userName, elapsed: ${stopwatch.elapsedMilliseconds}ms');
      } else {
        debugPrint('[MainScreen] _loadUserName: result=$result, mounted=$mounted');
      }
    } catch (error, stack) {
      debugPrint('[MainScreen] ERROR in _loadUserName: $error\n$stack');
    }
  }

  Future<void> _loadCardOfTheDay() async {
    debugPrint('[MainScreen] _loadCardOfTheDay: start');
    final stopwatch = Stopwatch()..start();
    
    try {
      final result = await PerformanceUtils.safeAsyncOperation(() async {
        debugPrint('[MainScreen] _loadCardOfTheDay: getting prefs instance');
        final prefs = await PerformanceUtils.prefsInstance;
        debugPrint('[MainScreen] _loadCardOfTheDay: prefs loaded');
        
        final today = DateTime.now().toIso8601String().split('T')[0];
        final cardKey = 'card_of_the_day_$today';
        debugPrint('[MainScreen] _loadCardOfTheDay: cardKey = $cardKey');
        
        final cardData = prefs.getString(cardKey);
        debugPrint('[MainScreen] _loadCardOfTheDay: cardData = $cardData');
        return cardData;
      });
      
      if (mounted) {
        if (result != null) {
          final data = result.split('|');
          debugPrint('[MainScreen] _loadCardOfTheDay: parsed data = $data');
          
          setState(() {
            _cardOfTheDayName = data[0];
            _cardOfTheDayImage = data[1];
          });
          debugPrint('[MainScreen] _loadCardOfTheDay: loaded=$_cardOfTheDayName, elapsed: ${stopwatch.elapsedMilliseconds}ms');
        } else {
          setState(() {
            _cardOfTheDayName = null;
            _cardOfTheDayImage = null;
          });
          debugPrint('[MainScreen] _loadCardOfTheDay: no card, elapsed: ${stopwatch.elapsedMilliseconds}ms');
        }
      } else {
        debugPrint('[MainScreen] _loadCardOfTheDay: not mounted, skipping setState');
      }
    } catch (error, stack) {
      debugPrint('[MainScreen] ERROR in _loadCardOfTheDay: $error\n$stack');
    }
  }

  // Метод для параллельной загрузки описания карты дня
  Future<void> _loadCardOfTheDayDescription() async {
    debugPrint('[MainScreen] _loadCardOfTheDayDescription: start');
    final stopwatch = Stopwatch()..start();
    
    try {
      final prefs = await SharedPreferences.getInstance();
      final today = DateTime.now().toIso8601String().split('T')[0];
      final descriptionKey = 'card_description_$today';
      
      // Проверяем, есть ли уже сохраненное описание
      final savedDescription = prefs.getString(descriptionKey);
      if (savedDescription != null) {
        debugPrint('[MainScreen] _loadCardOfTheDayDescription: using cached description, elapsed: ${stopwatch.elapsedMilliseconds}ms');
        return;
      }
      
      // Если описания нет, загружаем карту дня и генерируем описание
      final cardKey = 'card_of_the_day_$today';
      final cardData = prefs.getString(cardKey);
      
      if (cardData != null) {
        final data = cardData.split('|');
        final cardName = data[0];
        
        // Генерируем описание через OpenAI
        final translationService = TranslationService();
        final languageCode = LanguageService().currentLanguageCode;
        
        final translatedCardName = CardTranslations.getTranslation(cardName, AppLocalizations.of(context)!);
        final lang = languageCode.split('-').first;
        final template = promptTemplates[lang]?['card_of_the_day_screen_generate_description_prompt'] ?? '';
        final prompt = interpolatePrompt(
          template,
          {
            'name': _userName ?? '',
            'cardName': translatedCardName,
            'lang': languageCode,
          },
        );
        
        debugPrint('[MainScreen] _loadCardOfTheDayDescription: generating description for $cardName');
        final openAIDescription = await translationService.getTranslatedText(
          text: prompt,
          targetLanguageCode: languageCode,
          isTarotReading: true,
        );
        
        // Сохраняем описание
        await prefs.setString(descriptionKey, openAIDescription);
        debugPrint('[MainScreen] _loadCardOfTheDayDescription: description generated and saved, elapsed: ${stopwatch.elapsedMilliseconds}ms');
      } else {
        debugPrint('[MainScreen] _loadCardOfTheDayDescription: no card data found, skipping description generation');
      }
    } catch (e, stack) {
      debugPrint('[MainScreen] ERROR in _loadCardOfTheDayDescription: $e\n$stack');
    }
  }

  String _getGreeting() {
    final loc = AppLocalizations.of(context)!;
    return _userName.isNotEmpty ? loc.main_screen_greeting_with_name(_userName) : loc.main_screen_greeting;
  }

  String _getDateText() {
    final loc = AppLocalizations.of(context)!;
    final now = DateTime.now();
    final day = now.day.toString().padLeft(2, '0');
    final month = now.month.toString().padLeft(2, '0');
    final year = now.year;
    
    // Получаем короткое название дня недели
    String weekday;
    switch (now.weekday) {
      case 1: weekday = loc.main_screen_monday; break;
      case 2: weekday = loc.main_screen_tuesday; break;
      case 3: weekday = loc.main_screen_wednesday; break;
      case 4: weekday = loc.main_screen_thursday; break;
      case 5: weekday = loc.main_screen_friday; break;
      case 6: weekday = loc.main_screen_saturday; break;
      case 7: weekday = loc.main_screen_sunday; break;
      default: weekday = '';
    }
    
    return '$day/$month/$year, $weekday';
  }

  String _getCardOfTheDayTitle() {
    final loc = AppLocalizations.of(context)!;
    return loc.main_screen_your_card_of_the_day;
  }

  String _getCardOfTheDayDescription() {
    final loc = AppLocalizations.of(context)!;
    if (_cardOfTheDayName != null) {
      return loc.main_screen_card_of_the_day_with_name(CardTranslations.getTranslation(_cardOfTheDayName!, loc));
    } else {
      return loc.main_screen_card_of_the_day;
    }
  }

  String _getCardOfTheDayStatus() {
    final loc = AppLocalizations.of(context)!;
    if (_cardOfTheDayName != null) {
      return loc.main_screen_viewed;
    } else {
      return loc.main_screen_not_viewed;
    }
  }

  String _getSectionTitle(String section) {
    final loc = AppLocalizations.of(context)!;
    switch (section) {
      case 'spreads':
        return loc.main_screen_spreads;
      case 'training':
        return loc.main_screen_training;
      case 'entertainment':
        return loc.main_screen_entertainment;
      default:
        return '';
    }
  }

  Widget _buildGlassBlock({
    required Widget icon,
    required String title,
    required String description,
    double? height,
    Widget? trailing,
    bool highlight = false,
    Widget? overlay,
  }) {
    const accentColor = Color(0xFFDBC195);
    return Stack(
      children: [
        if (overlay != null) overlay,
        ClipRRect(
          borderRadius: BorderRadius.circular(22),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 18, sigmaY: 18),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.22), // чуть темнее, чем на размышлениях
                borderRadius: BorderRadius.circular(22),
                border: Border.all(color: Colors.white.withOpacity(0.18), width: 1.2),
                boxShadow: [
                        BoxShadow(
                    color: Colors.black.withOpacity(0.13),
                    blurRadius: 18,
                    offset: Offset(0, 4),
                        ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: height ?? 110,
                    height: height ?? 110,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        // ellipse.png можно оставить для фирменного стиля, иначе убрать
                        Image.asset(
                          'assets/images/ellipse.png',
                          width: height ?? 110,
                          height: height ?? 110,
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: SizedBox(
                            width: (height ?? 110) - 12,
                            height: (height ?? 110) - 12,
                            child: icon,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 18),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 14.0, bottom: 14.0, right: 18.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            title,
                            style: headingStyleForLang(Localizations.localeOf(context).toLanguageTag(), 20, color: Colors.white).copyWith(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            description,
                            style: bodyStyleForLang(Localizations.localeOf(context).toLanguageTag(), 13, color: Colors.white.withOpacity(0.92)),
                            softWrap: true,
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (trailing != null)
                    Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: trailing,
                    ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  void _showMenu() {
    final loc = AppLocalizations.of(context)!;
    debugPrint('[MainScreen] Меню открыто, elapsed:  [33m${_stopwatch.elapsedMilliseconds}ms [0m');
    debugPrint('[MainScreen] Screen size: ${MediaQuery.of(context).size}');
    
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        debugPrint('[MainScreen] Bottom sheet builder called');
        return ClipRRect(
          borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 18, sigmaY: 18),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xFF153842).withOpacity(0.45),
                borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
                border: Border.all(color: Colors.white.withOpacity(0.13)),
              ),
              child: Padding(
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
            top: 16,
            bottom: MediaQuery.of(context).viewInsets.bottom + 20,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      loc.main_screen_greeting_with_name(_userName),
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFDBC195),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      debugPrint('[MainScreen] Close button tapped');
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                        color: const Color(0xFFDBC195).withOpacity(0.1),
                        shape: BoxShape.circle,
                        border: Border.all(color: const Color(0xFFDBC195), width: 1),
                      ),
                      child: const Icon(
                        Icons.close,
                        color: Color(0xFFDBC195),
                        size: 18,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                loc.main_screen_glad_to_see_you_here,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.white70,
                ),
              ),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: const Color(0xFFDBC195).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: const Color(0xFFDBC195).withOpacity(0.3)),
                ),
                child: Text(
                  AppLocalizations.of(context)!.main_screen_your_plan_trial,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              LayoutBuilder(
                builder: (context, constraints) {
                  // Определяем ширину блока
                  double maxWidth = constraints.maxWidth;
                  // Базовые размеры
                  double titleFontSize = 24;
                  double badgeFontSize = 24;
                  double actionFontSize = 15;
                  double bulletFontSize = 16;
                  double imageSize = 90;
                  // Если мало места — уменьшаем всё
                  if (maxWidth < 400) {
                    titleFontSize = 18;
                    badgeFontSize = 18;
                    actionFontSize = 12;
                    bulletFontSize = 13;
                    imageSize = 60;
                  } else if (maxWidth < 500) {
                    titleFontSize = 20;
                    badgeFontSize = 20;
                    actionFontSize = 13;
                    bulletFontSize = 14;
                    imageSize = 75;
                  }
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => const PurchaseLoveScreen()),
                      );
                    },
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                      decoration: BoxDecoration(
                        color: const Color(0xFFCEB88B),
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: Text(
                                        AppLocalizations.of(context)!.main_screen_tariff,
                                        style: TextStyle(
                                          fontSize: titleFontSize,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black87,
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    Flexible(
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                                        decoration: BoxDecoration(
                                          color: Color(0xFF3B4B47),
                                          borderRadius: BorderRadius.circular(12),
                                        ),
                                        child: Text(
                                          AppLocalizations.of(context)!.main_screen_love_badge,
                                          style: TextStyle(
                                            fontSize: badgeFontSize,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white,
                                            letterSpacing: 1.1,
                                          ),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                                      decoration: BoxDecoration(
                                        color: Colors.redAccent,
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: Text(
                                        AppLocalizations.of(context)!.main_screen_promo_50,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: actionFontSize,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 14),
                                    Flexible(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(AppLocalizations.of(context)!.main_screen_no_ads, style: TextStyle(fontSize: bulletFontSize, color: Colors.black87), maxLines: 1, overflow: TextOverflow.ellipsis),
                                          Text(AppLocalizations.of(context)!.main_screen_no_limits, style: TextStyle(fontSize: bulletFontSize, color: Colors.black87), maxLines: 1, overflow: TextOverflow.ellipsis),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 12),
                          SizedBox(
                            width: imageSize,
                            height: imageSize,
                            child: Image.asset(
                              'assets/images/tarifflove.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(height: 16),
              _buildMenuItem(Icons.storefront, AppLocalizations.of(context)!.main_screen_shop_soon, null),
              _buildMenuItem(Icons.notifications, AppLocalizations.of(context)!.main_screen_notification_settings, () {
                Navigator.of(context).push(MaterialPageRoute(builder: (_) => const NotificationSettingsScreen()));
              }),
              _buildMenuItem(Icons.language, AppLocalizations.of(context)!.main_screen_language_selection, () {
                Navigator.of(context).push(MaterialPageRoute(builder: (_) => const LanguageSelectionOnboardingScreen()));
              }),
              _buildMenuItem(Icons.star_rate, AppLocalizations.of(context)!.main_screen_rate_app, () async {
                try {
                  debugPrint('[MainScreen] Rate app button tapped');
                  await ReviewService().requestReviewWithFallback();
                  await ReviewService().markAsRated();
                } catch (error, stackTrace) {
                  debugPrint('[MainScreen] ERROR in rate app: $error');
                  debugPrint('[MainScreen] Stack trace: $stackTrace');
                  if (mounted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(AppLocalizations.of(context)!.main_screen_rate_error),
                        backgroundColor: Colors.red,
                        duration: Duration(seconds: 3),
                      ),
                    );
                  }
                }
              }),
              _buildMenuItem(Icons.mail_outline, AppLocalizations.of(context)!.main_screen_contact_us, () {
                Navigator.of(context).push(MaterialPageRoute(builder: (_) => const ContactUsScreen()));
              }),
              const SizedBox(height: 16),
              Center(
                child: Text(
                  AppLocalizations.of(context)!.disclaimer_text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 9,
                    color: Colors.white60,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(height: 8),
            ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildMenuItem(IconData icon, String title, VoidCallback? onTap) {
    return ListTile(
      leading: Icon(icon, color: Colors.white),
      title: Text(title, style: const TextStyle(color: Colors.white)),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('[MainScreen] build: start');
    final buildStopwatch = Stopwatch()..start();
    
    try {
      final size = MediaQuery.of(context).size;
      debugPrint('[MainScreen] build: screen size = ${size.width}x${size.height}');
      
      final langCode = LanguageService().currentLanguageCode;
      debugPrint('[MainScreen] build: language code = $langCode');
      
      final loc = AppLocalizations.of(context)!;
      debugPrint('[MainScreen] build: localizations loaded');
      
      debugPrint('[MainScreen] build: elapsed: ${_stopwatch.elapsedMilliseconds}ms');

      final scaffold = Scaffold(
        extendBodyBehindAppBar: true,
        body: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/images/main-2.jpg',
                fit: BoxFit.cover,
              ),
            ),
            SafeArea(
              top: true,
              bottom: false,
              child: _isLoading
                  ? const Center(
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                      ),
                    )
                  : SingleChildScrollView(
                      padding: EdgeInsets.fromLTRB(16, 18, 16, MediaQuery.of(context).padding.bottom + 96),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Text(
                                  _getGreeting(),
                                  style: bodyStyleForLang(langCode, 20, color: Colors.white),
                                ),
                              ),
                              // Индикатор прогресса журнала
                              Consumer<JournalService>(
                                builder: (context, journalService, child) {
                                  return FutureBuilder<int>(
                                    key: ValueKey('progress_${journalService.progressVersion}'),
                                    future: journalService.getCurrentSessionProgress(),
                                    builder: (context, snapshot) {
                                      final count = (snapshot.data ?? 0).clamp(0, 7);
                                      return Container(
                                        margin: const EdgeInsets.symmetric(horizontal: 8),
                                        constraints: const BoxConstraints(maxWidth: 180),
                                        child: _JournalProgressIndicator(
                                          filledCount: count,
                                          onTap: () {
                                            Navigator.of(context).pushNamed('/journal');
                                          },
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                              GestureDetector(
                                onTap: _showMenu,
                                child: Container(
                                  width: 36,
                                  height: 36,
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.13),
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Colors.white, width: 2),
                                  ),
                                  child: const Icon(Icons.person, color: Colors.white, size: 22),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Text(
                            _getDateText(),
                            style: bodyStyleForLang(langCode, 15, color: Colors.white.withOpacity(0.8)),
                          ),
                          const SizedBox(height: 22),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: GestureDetector(
                              onTap: () async {
                                debugPrint('[MainScreen] Card of the day tapped - checking session');
                                
                                // Проверяем, можно ли открыть расклад
                                if (!await _canOpenSpread()) {
                                  return;
                                }
                                
                                debugPrint('[MainScreen] Card of the day tapped - starting parallel loading');
                                
                                // Начинаем загрузку описания карты дня параллельно
                                final descriptionFuture = _loadCardOfTheDayDescription();
                                
                                // Показываем рекламу параллельно только если нет активной подписки
                                if (SubscriptionUtils.shouldShowAds()) {
                                  try {
                                    bool isLoaded = await Appodeal.isLoaded(AppodealAdType.Interstitial);
                                    debugPrint('[MainScreen] Appodeal Interstitial loaded: $isLoaded');
                                    if (isLoaded) {
                                      debugPrint('[MainScreen] Showing Appodeal Interstitial ad');
                                      await Appodeal.show(AppodealAdType.Interstitial);
                                      debugPrint('[MainScreen] Appodeal Interstitial ad shown');
                                      await Appodeal.cache(AppodealAdType.Interstitial);
                                    } else {
                                      debugPrint('[MainScreen] Appodeal Interstitial not loaded, caching now');
                                      await Appodeal.cache(AppodealAdType.Interstitial);
                                    }
                                  } catch (e, st) {
                                    debugPrint('[MainScreen] ERROR showing Appodeal Interstitial: $e\n$st');
                                  }
                                } else {
                                  debugPrint('[MainScreen] Skipping ad - user has active subscription');
                                }
                                
                                // Ждем завершения загрузки описания (если еще не завершилось)
                                await descriptionFuture;
                                
                                await Navigator.push(context, MaterialPageRoute(builder: (_) => const CardOfTheDayScreen()));
                                _loadCardOfTheDay();
                              },
                              child: _buildGlassBlock(
                                icon: _cardOfTheDayImage != null
                                    ? ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: Image.asset(
                                          _cardOfTheDayImage!,
                                          width: 54,
                                          height: 80,
                                          fit: BoxFit.contain,
                                        ),
                                      )
                                    : Image.asset('assets/images/blur.png', width: 54, height: 80, fit: BoxFit.contain),
                                title: _getCardOfTheDayTitle(),
                                description: _getCardOfTheDayDescription(),
                                height: 110,
                                trailing: Text(
                                  _getCardOfTheDayStatus(),
                                  style: bodyStyleForLang(langCode, 14, color: Colors.white.withOpacity(0.7)),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          Text(
                            _getSectionTitle('spreads'),
                            style: headingStyleForLang(langCode, 18, color: Colors.white),
                          ),
                          const SizedBox(height: 16),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: GestureDetector(
                              onTap: () async {
                                // Проверяем, можно ли открыть расклад
                                if (!await _canOpenSpread()) {
                                  return;
                                }
                                Navigator.push(context, MaterialPageRoute(builder: (_) => const QuickReadingScreen()));
                              },
                              child: _buildGlassBlock(
                                icon: Image.asset('assets/images/fast.png', width: 54, height: 54, fit: BoxFit.contain),
                                title: loc.main_screen_quick_reading_title,
                                description: loc.main_screen_quick_reading_description,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: GestureDetector(
                              onTap: () async {
                                // Проверяем, можно ли открыть расклад
                                if (!await _canOpenSpread()) {
                                  return;
                                }
                                Navigator.push(context, MaterialPageRoute(builder: (_) => const ClassicSpreadsScreen()));
                              },
                              child: _buildGlassBlock(
                                icon: Image.asset('assets/images/classic.png', width: 54, height: 54, fit: BoxFit.contain),
                                title: AppLocalizations.of(context)!.main_screen_classic_spreads_title,
                                description: AppLocalizations.of(context)!.main_screen_classic_spreads_description,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: GestureDetector(
                              onTap: () async {
                                // Проверяем, можно ли открыть расклад
                                if (!await _canOpenSpread()) {
                                  return;
                                }
                                Navigator.push(context, MaterialPageRoute(builder: (_) => const ThematicSpreadsScreen()));
                              },
                              child: _buildGlassBlock(
                                icon: Image.asset('assets/images/love.png', width: 54, height: 54, fit: BoxFit.contain),
                                title: AppLocalizations.of(context)!.main_screen_thematic_spreads_title,
                                description: AppLocalizations.of(context)!.main_screen_thematic_spreads_description,
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          Text(
                            _getSectionTitle('training'),
                            style: headingStyleForLang(langCode, 18, color: Colors.white),
                          ),
                          const SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (_) => const CardCombinationScreen()));
                              },
                              child: _buildGlassBlock(
                                icon: Image.asset('assets/images/change.png', width: 54, height: 54, fit: BoxFit.contain),
                                title: AppLocalizations.of(context)!.main_screen_card_combination_title,
                                description: AppLocalizations.of(context)!.main_screen_card_combination_description,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (_) => const CardMeaningsScreen()));
                              },
                              child: _buildGlassBlock(
                                icon: Image.asset('assets/images/mean.png', width: 54, height: 54, fit: BoxFit.contain),
                                title: AppLocalizations.of(context)!.main_screen_card_meanings_title,
                                description: AppLocalizations.of(context)!.main_screen_card_meanings_description,
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          Text(
                            _getSectionTitle('entertainment'),
                            style: headingStyleForLang(langCode, 18, color: Colors.white),
                          ),
                          const SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (_) => const FunSpreadScreen()));
                              },
                              child: _buildGlassBlock(
                                icon: Image.asset('assets/images/fun.png', width: 54, height: 54, fit: BoxFit.contain),
                                title: AppLocalizations.of(context)!.main_screen_fun_spread_title,
                                description: AppLocalizations.of(context)!.main_screen_fun_spread_description,
                              ),
                            ),
                          ),
                          const SizedBox(height: 12),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (_) => const ContactUsScreen()));
                            },
                            child: Container(
                              width: double.infinity,
                              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.08),
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(color: Colors.white.withOpacity(0.2)),
                              ),
                              child: Text(
                                AppLocalizations.of(context)!.main_screen_suggest_spread,
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.8),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          const SizedBox(height: 18),
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                            child: Text(
                              AppLocalizations.of(context)!.main_screen_disclaimer,
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.6),
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                height: 1.3,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
            ),
            // Глассморфизм-меню поверх всего
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: GlassBottomNavBar(
                currentIndex: _navIndex,
                onTap: (index) {
                  if (index == 0) {
                    setState(() => _navIndex = 0); // Расклады (главный)
                  } else if (index == 1) {
                    setState(() => _navIndex = 1);
                    Navigator.push(context, MaterialPageRoute(builder: (_) => const ReflectionSummaryScreen()))
                      .then((_) => setState(() => _navIndex = 0));
                  } else if (index == 2) {
                    setState(() => _navIndex = 2);
                    _showMenu();
                    // Сбросим на 'Расклады' после закрытия меню
                    Future.delayed(const Duration(milliseconds: 400), () => setState(() => _navIndex = 0));
                  }
                },
                    ),
            ),
          ],
        ),
      );
      
      debugPrint('[MainScreen] build: completed, elapsed: ${buildStopwatch.elapsedMilliseconds}ms');
      return scaffold;
    } catch (e, stack) {
      debugPrint('[MainScreen] ERROR in build(): $e\n$stack');
      rethrow;
    }
  }
}

// --- GlassBottomNavBar ---
class GlassBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;
  const GlassBottomNavBar({required this.currentIndex, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    final langCode = LanguageService().currentLanguageCode;
    return Padding(
      padding: EdgeInsets.only(
        left: 16, right: 16, bottom: MediaQuery.of(context).padding.bottom + 4,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 18, sigmaY: 18),
          child: Container(
            height: 56,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.18),
              borderRadius: BorderRadius.circular(40),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _GlassNavItem(
                  label: AppLocalizations.of(context)!.main_screen_nav_spreads,
                  isActive: currentIndex == 0,
                  onTap: () => onTap(0),
                  langCode: langCode,
                ),
                _GlassNavItem(
                  label: AppLocalizations.of(context)!.main_screen_nav_journal,
                  isActive: currentIndex == 1,
                  onTap: () => onTap(1),
                  langCode: langCode,
                ),
                _GlassNavItem(
                  label: AppLocalizations.of(context)!.main_screen_nav_menu,
                  isActive: currentIndex == 2,
                  onTap: () => onTap(2),
                  langCode: langCode,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _GlassNavItem extends StatelessWidget {
  final String label;
  final bool isActive;
  final VoidCallback onTap;
  final String langCode;
  const _GlassNavItem({required this.label, required this.isActive, required this.onTap, required this.langCode});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          margin: EdgeInsets.symmetric(vertical: 4, horizontal: 6),
          alignment: Alignment.center,
          child: isActive
              ? Stack(
                  alignment: Alignment.center,
                  children: [
                    // Белый фон с glow (меньше)
                    Container(
                      height: 36,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(24),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(0.85),
                            blurRadius: 12,
                            spreadRadius: 1,
                          ),
                        ],
                      ),
                    ),
                    Text(
                      label,
                      style: bodyStyleForLang(langCode, 18, color: Colors.black)
                          .copyWith(fontWeight: FontWeight.w500),
                    ),
                  ],
                )
              : Text(
                  label,
                  style: bodyStyleForLang(langCode, 18, color: Colors.white)
                      .copyWith(fontWeight: FontWeight.w500),
                ),
        ),
      ),
    );
  }
} 

class _JournalProgressIndicator extends StatelessWidget {
  final int filledCount;
  final VoidCallback onTap;
  const _JournalProgressIndicator({required this.filledCount, required this.onTap, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isGold = filledCount >= 7;
    return LayoutBuilder(
      builder: (context, constraints) {
        final totalWidth = constraints.maxWidth > 0 ? constraints.maxWidth : MediaQuery.of(context).size.width;
        final cardSpacing = 2.0; // было 6.0
        final maxCardWidth = 18.0; // было 28.0
        final minCardWidth = 10.0; // было 16.0
        double cardWidth = ((totalWidth - cardSpacing * 6) / 7).clamp(minCardWidth, maxCardWidth);
        final cardHeight = cardWidth * 2.0; // было 1.4, теперь вытянуты
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(7, (i) {
            final filled = i < filledCount;
            return GestureDetector(
              onTap: onTap,
              child: Container(
                width: cardWidth,
                height: cardHeight,
                margin: EdgeInsets.only(
                  right: i < 6 ? cardSpacing : (cardSpacing + 12), // последний элемент — больше отступ
                ),
                decoration: BoxDecoration(
                  color: filled ? (isGold ? Color(0xFFDBC195) : Colors.white) : Colors.transparent,
                  border: Border.all(
                    color: isGold ? Color(0xFFDBC195) : Colors.white,
                    width: 1.5,
                  ),
                  borderRadius: BorderRadius.circular(7),
                  boxShadow: [
                    if (filled)
                      BoxShadow(
                        color: (isGold ? Color(0xFFDBC195) : Colors.white).withOpacity(0.3),
                        blurRadius: 4,
                        spreadRadius: 0,
                        offset: const Offset(0, 2),
                      ),
                    if (!filled)
                      BoxShadow(
                        color: Colors.white.withOpacity(0.18),
                        blurRadius: 8,
                        spreadRadius: 1,
                      ),
                  ],
                ),
                child: filled ? _buildCardContent(isGold) : null,
              ),
            );
          }),
        );
      },
    );
  }

  Widget _buildCardContent(bool isGold) {
    return Container(); // Просто пустой контейнер, чтобы карта была закрашена
  }
} 