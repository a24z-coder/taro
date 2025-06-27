import 'dart:ui';
import 'package:flutter/material.dart';
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
import 'package:tarot_ai/services/user_service.dart';
import 'package:tarot_ai/utils/font_utils.dart';
import 'package:tarot_ai/utils/performance_utils.dart';
import 'package:in_app_review/in_app_review.dart';
// import 'package:stack_appodeal_flutter/stack_appodeal_flutter.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String _userName = '';
  String? _cardOfTheDayName;
  String? _cardOfTheDayImage;
  bool _isLoading = true;
  final Stopwatch _stopwatch = Stopwatch();

  @override
  void initState() {
    super.initState();
    debugPrint('[MainScreen] initState');
    _stopwatch.start();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      debugPrint('[MainScreen] addPostFrameCallback');
      _loadData();
    });
  }

  Future<void> _loadData() async {
    debugPrint('[MainScreen] _loadData: start');
    try {
      await Future.wait([
        _loadUserName(),
        _loadCardOfTheDay(),
      ]);
    } catch (error) {
      debugPrint('[MainScreen] Error loading data: $error');
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
        debugPrint('[MainScreen] _loadData: finished, elapsed: ${_stopwatch.elapsedMilliseconds}ms');
      }
    }
  }

  Future<void> _loadUserName() async {
    debugPrint('[MainScreen] _loadUserName: start');
    final result = await PerformanceUtils.safeAsyncOperation(() async {
      await UserService().loadUserName();
      return UserService().userName;
    });
    if (result != null && mounted) {
      setState(() {
        _userName = result;
      });
      debugPrint('[MainScreen] _loadUserName: loaded=$_userName');
    }
  }

  Future<void> _loadCardOfTheDay() async {
    debugPrint('[MainScreen] _loadCardOfTheDay: start');
    final result = await PerformanceUtils.safeAsyncOperation(() async {
      final prefs = await PerformanceUtils.prefsInstance;
      final today = DateTime.now().toIso8601String().split('T')[0];
      final cardKey = 'card_of_the_day_$today';
      return prefs.getString(cardKey);
    });
    if (mounted) {
      if (result != null) {
        final data = result.split('|');
        setState(() {
          _cardOfTheDayName = data[0];
          _cardOfTheDayImage = data[1];
        });
        debugPrint('[MainScreen] _loadCardOfTheDay: loaded=$_cardOfTheDayName');
      } else {
        setState(() {
          _cardOfTheDayName = null;
          _cardOfTheDayImage = null;
        });
        debugPrint('[MainScreen] _loadCardOfTheDay: no card');
      }
    }
  }

  String _getGreeting(String langCode) {
    if (langCode.startsWith('ru')) {
      return _userName.isNotEmpty ? 'Приветствую, $_userName' : 'Приветствую';
    } else if (langCode.startsWith('nl')) {
      return _userName.isNotEmpty ? 'Welkom, $_userName' : 'Welkom';
    } else {
      return _userName.isNotEmpty ? 'Welcome, $_userName' : 'Welcome';
    }
  }

  String _getDateText(String langCode) {
    if (langCode.startsWith('ru')) {
      return 'Сегодня, 14/06/2023, Чт';
    } else if (langCode.startsWith('nl')) {
      return 'Vandaag: 14/06/2023 Do';
    } else {
      return 'Today: 14/06/2023 Thu';
    }
  }

  String _getCardOfTheDayTitle(String langCode) {
    if (langCode.startsWith('ru')) {
      return 'Ваша карта дня';
    } else if (langCode.startsWith('nl')) {
      return 'Jouw dagkaart';
    } else {
      return 'Your card of the day';
    }
  }

  String _getCardOfTheDayDescription(String langCode) {
    if (_cardOfTheDayName != null) {
      if (langCode.startsWith('ru')) {
        return 'Карта дня: $_cardOfTheDayName';
      } else if (langCode.startsWith('nl')) {
        return 'Kaart van de dag: $_cardOfTheDayName';
      } else {
        return 'Card of the day: $_cardOfTheDayName';
      }
    } else {
      if (langCode.startsWith('ru')) {
        return 'Карта дня:';
      } else if (langCode.startsWith('nl')) {
        return 'Kaart van de dag:';
      } else {
        return 'Card of the day:';
      }
    }
  }

  String _getCardOfTheDayStatus(String langCode) {
    if (_cardOfTheDayName != null) {
      if (langCode.startsWith('ru')) {
        return 'Открыта';
      } else if (langCode.startsWith('nl')) {
        return 'Bekeken';
      } else {
        return 'Viewed';
      }
    } else {
      if (langCode.startsWith('ru')) {
        return 'Посмотреть';
      } else if (langCode.startsWith('nl')) {
        return 'Bekijken';
      } else {
        return 'View';
      }
    }
  }

  String _getSectionTitle(String section, String langCode) {
    switch (section) {
      case 'spreads':
        if (langCode.startsWith('ru')) return 'Расклады';
        if (langCode.startsWith('nl')) return 'Leggingen';
        return 'Spreads';
      case 'training':
        if (langCode.startsWith('ru')) return 'Обучение';
        if (langCode.startsWith('nl')) return 'Training';
        return 'Training';
      case 'entertainment':
        if (langCode.startsWith('ru')) return 'Развлечение';
        if (langCode.startsWith('nl')) return 'Entertainment';
        return 'Entertainment';
      default:
        return '';
    }
  }

  Widget _buildGlassBlock({
    required Widget icon,
    required String title,
    required String description,
    double height = 110,
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
            filter: ImageFilter.blur(sigmaX: 16, sigmaY: 16),
            child: Container(
              height: height,
              decoration: BoxDecoration(
                color: Colors.black.withValues(alpha: 0.35),
                borderRadius: BorderRadius.circular(22),
                border: Border.all(color: Colors.white.withValues(alpha: 0.85), width: 1.5),
                boxShadow: highlight
                    ? [
                        BoxShadow(
                          color: accentColor.withValues(alpha: 0.25),
                          blurRadius: 32,
                          spreadRadius: 2,
                        ),
                      ]
                    : [],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: height,
                    height: height,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset(
                          'assets/images/ellipse.png',
                          width: height,
                          height: height,
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: SizedBox(
                            width: height - 12,
                            height: height - 12,
                            child: icon,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 18),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            title,
                            style: headingStyleForLang(Localizations.localeOf(context).toLanguageTag(), 20, color: accentColor),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            description,
                            style: bodyStyleForLang(Localizations.localeOf(context).toLanguageTag(), 13, color: Colors.white.withValues(alpha: 0.92)),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
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
    debugPrint('[MainScreen] Меню открыто, elapsed: ${_stopwatch.elapsedMilliseconds}ms');
    debugPrint('[MainScreen] Screen size: ${MediaQuery.of(context).size}');
    
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      backgroundColor: const Color(0xFF153842),
      builder: (context) {
        debugPrint('[MainScreen] Bottom sheet builder called');
        return Padding(
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
                      'Привет, $_userName',
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
                        color: const Color(0xFFDBC195).withValues(alpha: 0.1),
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
              const Text(
                'Рады видеть тебя здесь',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white70,
                ),
              ),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: const Color(0xFFDBC195).withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: const Color(0xFFDBC195).withValues(alpha: 0.3)),
                ),
                child: const Text(
                  'Ваш план: Пробный (с рекламой)',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                decoration: BoxDecoration(
                  color: const Color(0xFFCEB88B),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                            decoration: BoxDecoration(
                              color: Colors.redAccent,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Text(
                              'АКЦИЯ -50%',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ),
                          const SizedBox(height: 6),
                          Row(
                            children: [
                              const Text(
                                'ТАРИФ ',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black87,
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 1),
                                decoration: BoxDecoration(
                                  color: const Color(0xFF3B4B47),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: const Text(
                                  'ЛЮБОВЬ',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 6),
                          const Text('• без рекламы', style: TextStyle(fontSize: 13, color: Colors.black87)),
                          const Text('• без ограничений', style: TextStyle(fontSize: 13, color: Colors.black87)),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 50,
                      height: 50,
                      child: Image.asset(
                        'assets/images/tarifflove.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              _buildMenuItem(Icons.storefront, 'Магазин (soon)', null),
              _buildMenuItem(Icons.notifications, 'Настройки уведомлений', () {
                Navigator.of(context).push(MaterialPageRoute(builder: (_) => const NotificationSettingsScreen()));
              }),
              _buildMenuItem(Icons.language, 'Выбор языка', () {
                Navigator.of(context).push(MaterialPageRoute(builder: (_) => const LanguageSelectionOnboardingScreen()));
              }),
              _buildMenuItem(Icons.star_rate, 'Оцените приложение', () async {
                final inAppReview = InAppReview.instance;
                if (await inAppReview.isAvailable()) {
                  inAppReview.requestReview();
                } else {
                  inAppReview.openStoreListing();
                }
              }),
              _buildMenuItem(Icons.mail_outline, 'Связаться с нами', () {
                Navigator.of(context).push(MaterialPageRoute(builder: (_) => const ContactUsScreen()));
              }),
              const SizedBox(height: 16),
              const Center(
                child: Text(
                  'Приложение использует ИИ исключительно в развлекательных целях. Мы не несем ответственности за принятые вами решения. При необходимости обратитесь к специалисту.',
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
    final size = MediaQuery.of(context).size;
    final langCode = Localizations.localeOf(context).toLanguageTag();

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Positioned.fill(
            child: PerformanceUtils.optimizedImage(
              assetPath: 'assets/images/main-2.jpg',
              width: size.width,
              height: size.height,
              fit: BoxFit.cover,
              errorWidget: Container(
                color: const Color(0xFF153842),
                child: const Center(
                  child: Icon(
                    Icons.image_not_supported,
                    color: Colors.white,
                    size: 64,
                  ),
                ),
              ),
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
                    padding: EdgeInsets.fromLTRB(16, 18, 16, MediaQuery.of(context).padding.bottom + 24),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                _getGreeting(langCode),
                                style: bodyStyleForLang(langCode, 20, color: Colors.white),
                              ),
                            ),
                            GestureDetector(
                              onTap: _showMenu,
                              child: Container(
                                width: 36,
                                height: 36,
                                decoration: BoxDecoration(
                                  color: Colors.white.withValues(alpha: 0.13),
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
                          _getDateText(langCode),
                          style: bodyStyleForLang(langCode, 15, color: Colors.white.withValues(alpha: 0.8)),
                        ),
                        const SizedBox(height: 22),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: GestureDetector(
                            onTap: () async {
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
                              title: _getCardOfTheDayTitle(langCode),
                              description: _getCardOfTheDayDescription(langCode),
                              height: 110,
                              trailing: Text(
                                _getCardOfTheDayStatus(langCode),
                                style: bodyStyleForLang(langCode, 14, color: Colors.white.withValues(alpha: 0.7)),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          _getSectionTitle('spreads', langCode),
                          style: headingStyleForLang(langCode, 18, color: Colors.white),
                        ),
                        const SizedBox(height: 16),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (_) => const QuickReadingScreen()));
                            },
                            child: _buildGlassBlock(
                              icon: Image.asset('assets/images/fast.png', width: 54, height: 54, fit: BoxFit.contain),
                              title: langCode.startsWith('ru') ? 'Быстрый расклад' : langCode.startsWith('nl') ? 'Snelle legging' : 'Quick spread',
                              description: langCode.startsWith('ru') ? 'за пару касаний получите чёткий ответ на свой вопрос одной картой' : langCode.startsWith('nl') ? 'snel antwoord op je vraag met één kaart' : 'get a quick answer to your question with one card',
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (_) => const ClassicSpreadsScreen()));
                            },
                            child: _buildGlassBlock(
                              icon: Image.asset('assets/images/classic.png', width: 54, height: 54, fit: BoxFit.contain),
                              title: langCode.startsWith('ru') ? 'Классические расклады' : langCode.startsWith('nl') ? 'Klassieke leggingen' : 'Classic spreads',
                              description: langCode.startsWith('ru') ? 'расклады на 2 / 3 / 5 карт и полный развёрнутый Кельтский крест' : langCode.startsWith('nl') ? 'leggingen met 2 / 3 / 5 kaarten en het volledige Keltisch kruis' : 'spreads for 2 / 3 / 5 cards and the full Celtic cross',
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (_) => const ThematicSpreadsScreen()));
                            },
                            child: _buildGlassBlock(
                              icon: Image.asset('assets/images/love.png', width: 54, height: 54, fit: BoxFit.contain),
                              title: langCode.startsWith('ru') ? 'Тематические расклады' : langCode.startsWith('nl') ? 'Thematische leggingen' : 'Thematic spreads',
                              description: langCode.startsWith('ru') ? 'готовые схемы для важных сфер: любовь, карьера, здоровье, путешествия' : langCode.startsWith('nl') ? 'voor liefde, carrière, gezondheid, reizen' : 'ready-made layouts for love, career, health, travel',
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          _getSectionTitle('training', langCode),
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
                              title: langCode.startsWith('ru') ? 'Сочетание карт' : langCode.startsWith('nl') ? 'Kaartcombinatie' : 'Card Combination',
                              description: langCode.startsWith('ru') ? '{калькулятор таро} выберите карты и получите глубокий анализ связей' : langCode.startsWith('nl') ? 'kies kaarten en krijg diepgaande analyse van combinaties' : 'choose cards and get a deep analysis of connections',
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
                              title: langCode.startsWith('ru') ? 'Значение карт' : langCode.startsWith('nl') ? 'Betekenissen van kaarten' : 'Card Meanings',
                              description: langCode.startsWith('ru') ? 'полный справочник прямых и перевёрнутых значений всех старших и младших арканов' : langCode.startsWith('nl') ? 'volledig overzicht van rechtopstaande en omgekeerde betekenissen' : 'full reference of upright and reversed meanings of all major and minor arcana',
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          _getSectionTitle('entertainment', langCode),
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
                              title: langCode.startsWith('ru') ? 'Шуточный расклад для соц.сетей' : langCode.startsWith('nl') ? 'Graplegging voor socials' : 'Fun spread for social media',
                              description: langCode.startsWith('ru') ? 'поднимите настроение, сделайте шуточный расклад и поделитесь в соц сетях' : langCode.startsWith('nl') ? 'verhoog je stemming, maak een grappige legging en deel het op sociale media' : 'lift your mood, make a fun spread and share it on social media',
                            ),
                          ),
                        ),
                        const SizedBox(height: 18),
                      ],
                    ),
                  ),
          ),
        ],
      ),
    );
  }
} 