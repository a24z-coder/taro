import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'dart:math';
import 'package:tarot_ai/utils/card_translations.dart';
import 'package:tarot_ai/services/translation_service.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tarot_ai/services/user_service.dart';
import 'package:tarot_ai/services/language_service.dart';
import 'package:tarot_ai/l10n/app_localizations.dart';
import '../widgets/ad_promo_block.dart';
import 'package:stack_appodeal_flutter/stack_appodeal_flutter.dart';

class MonthlyForecastSpreadScreen extends StatefulWidget {
  const MonthlyForecastSpreadScreen({Key? key}) : super(key: key);

  @override
  State<MonthlyForecastSpreadScreen> createState() => _MonthlyForecastSpreadScreenState();
}

class _MonthlyForecastSpreadScreenState extends State<MonthlyForecastSpreadScreen> {
  final TextEditingController _questionController = TextEditingController();
  bool _isLoading = false;
  String _languageCode = 'en';

  final Random _random = Random();
  List<String?> _flippedCards = List.filled(12, null);
  List<bool> _cardFlipped = List.filled(12, false);
  List<GlobalKey<FlipCardState>> _cardKeys = List.generate(12, (_) => GlobalKey<FlipCardState>());
  bool _showCards = false;
  bool _showSeeMeaningButton = true;
  bool _showAdAndNewSpread = false;
  String? _openAiAnswer;

  // Диалоговые сообщения
  List<_ChatMessage> _messages = [];
  bool _questionSent = false;

  String _userName = '';
  Future<void> _loadUserName() async {
    await UserService().loadUserName();
    setState(() {
      _userName = UserService().userName;
    });
  }

  // Функция для получения переведенных предложенных вопросов
  List<String> _getTranslatedSuggestedQuestions() {
    final l10n = AppLocalizations.of(context);
    if (l10n != null) {
      return [
        l10n.monthly_forecast_spread_screen_suggested_questions_1,
        l10n.monthly_forecast_spread_screen_suggested_questions_2,
        l10n.monthly_forecast_spread_screen_suggested_questions_3,
      ];
    }
    return []; // Возвращаем пустой список, если локализация недоступна
  }

  // Функция для получения переведенного приветственного сообщения
  String _getTranslatedInitialMessage() {
    return AppLocalizations.of(context)!.good_day_please_write_your_question_below;
  }

  @override
  void initState() {
    super.initState();
    _loadLanguage();
    _loadUserName();
    LanguageService().addListener(_onLanguageChanged);
    // Обновляем приветственное сообщение после инициализации
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        setState(() {
          _messages = [
            _ChatMessage(
              text: _getTranslatedInitialMessage(),
              isUser: false,
            ),
          ];
        });
      }
    });
  }

  Future<void> _loadLanguage() async {
    await LanguageService().loadLanguage();
    setState(() {
      _languageCode = LanguageService().currentLanguageCode;
    });
  }

  void _handleGetAnswer() async {
    String userText = _questionController.text.trim();
    if (userText.isEmpty) return;
    setState(() {
      _isLoading = true;
      _messages.add(_ChatMessage(text: userText, isUser: true));
      _questionController.clear();
      _questionSent = true;
    });
    await Future.delayed(const Duration(milliseconds: 300));
    setState(() {
      _messages.add(_ChatMessage(
        text: AppLocalizations.of(context)!.monthly_forecast_spread_screen_request_accepted,
        isUser: false,
      ));
      List<String> available = List.from(CardTranslations.cards);
      available.shuffle(_random);
      _flippedCards = available.take(12).toList();
      _cardFlipped = List.filled(12, false);
      _showCards = true;
      _isLoading = false;
    });
  }

  void _handleSeeMeaning() async {
    setState(() {
      _showSeeMeaningButton = false;
    });
    _loadCardsDescription();
    try {
      final adStartTime = DateTime.now();
      debugPrint('[MonthlyForecast] Starting ad loading at \x1b[36m${adStartTime.toIso8601String()}\x1b[0m');
      bool isLoaded = await Appodeal.isLoaded(AppodealAdType.Interstitial);
      if (isLoaded) {
        await Appodeal.show(AppodealAdType.Interstitial);
        await Appodeal.cache(AppodealAdType.Interstitial);
        final adEndTime = DateTime.now();
        debugPrint('[MonthlyForecast] Appodeal Interstitial shown successfully at ${adEndTime.toIso8601String()}, duration: ${adEndTime.difference(adStartTime).inMilliseconds}ms');
      } else {
        await Appodeal.cache(AppodealAdType.Interstitial);
        final adEndTime = DateTime.now();
        debugPrint('[MonthlyForecast] Appodeal Interstitial cached for next time at ${adEndTime.toIso8601String()}, duration: ${adEndTime.difference(adStartTime).inMilliseconds}ms');
      }
    } catch (e, st) {
      final adEndTime = DateTime.now();
      debugPrint('[MonthlyForecast] ERROR showing Appodeal Interstitial at ${adEndTime.toIso8601String()}: $e\n$st');
    }
  }

  void _onLanguageChanged() {
    if (mounted) {
      setState(() {
        _languageCode = LanguageService().currentLanguageCode;
      });
    }
  }

  Future<void> _loadCardsDescription() async {
    setState(() {
      _isLoading = true;
    });
    if (_userName.isEmpty) {
      await _loadUserName();
    }
    final l10n = AppLocalizations.of(context)!;
    final cards = _flippedCards.whereType<String>().toList();
    List<String> cardsRu = List.generate(12, (i) => cards.length > i ? CardTranslations.getTranslatedCardName(cards[i]!, l10n) : '');
    String userText = _messages.firstWhere((m) => m.isUser, orElse: () => _ChatMessage(text: '', isUser: true)).text;
    final now = DateTime.now();
    String monthRu;
    switch (now.month) {
      case 1:
        monthRu = AppLocalizations.of(context)!.month_january + ' ' + now.year.toString();
        break;
      case 2:
        monthRu = AppLocalizations.of(context)!.month_february + ' ' + now.year.toString();
        break;
      case 3:
        monthRu = AppLocalizations.of(context)!.month_march + ' ' + now.year.toString();
        break;
      case 4:
        monthRu = AppLocalizations.of(context)!.month_april + ' ' + now.year.toString();
        break;
      case 5:
        monthRu = AppLocalizations.of(context)!.month_may + ' ' + now.year.toString();
        break;
      case 6:
        monthRu = AppLocalizations.of(context)!.month_june + ' ' + now.year.toString();
        break;
      case 7:
        monthRu = AppLocalizations.of(context)!.month_july + ' ' + now.year.toString();
        break;
      case 8:
        monthRu = AppLocalizations.of(context)!.month_august + ' ' + now.year.toString();
        break;
      case 9:
        monthRu = AppLocalizations.of(context)!.month_september + ' ' + now.year.toString();
        break;
      case 10:
        monthRu = AppLocalizations.of(context)!.month_october + ' ' + now.year.toString();
        break;
      case 11:
        monthRu = AppLocalizations.of(context)!.month_november + ' ' + now.year.toString();
        break;
      case 12:
        monthRu = AppLocalizations.of(context)!.month_december + ' ' + now.year.toString();
        break;
      default:
        monthRu = AppLocalizations.of(context)!.month_january + ' ' + now.year.toString();
    }
    String prompt = l10n.monthly_wheel_prompt(
      cardsRu[0],
      cardsRu[9],
      cardsRu[10],
      cardsRu[11],
      cardsRu[1],
      cardsRu[2],
      cardsRu[3],
      cardsRu[4],
      cardsRu[5],
      cardsRu[6],
      cardsRu[7],
      cardsRu[8],
      monthRu,
      _userName.isNotEmpty ? _userName : l10n.the_user,
      userText
    );
    print('[MonthlyForecast] prompt: ' + prompt);
    try {
      final response = await TranslationService().getTranslatedText(
        text: prompt,
        targetLanguageCode: _languageCode,
        isTarotReading: true,
      );
      // Фильтрация имени пользователя после диапазона дат
      String filteredResponse = response;
      if (_userName.isNotEmpty) {
        final namePattern = RegExp.escape(_userName);
        filteredResponse = filteredResponse.replaceAllMapped(
          RegExp(r'(\d+–\d+|\d+)\s+' + namePattern + r'\s+—'),
          (m) => '${m[1]} —',
        );
      }
      // Автоматическая подстановка месяца после диапазона дат
      String monthGenitive;
      switch (now.month) {
        case 1:
          monthGenitive = AppLocalizations.of(context)!.month_january;
          break;
        case 2:
          monthGenitive = AppLocalizations.of(context)!.month_february;
          break;
        case 3:
          monthGenitive = AppLocalizations.of(context)!.month_march;
          break;
        case 4:
          monthGenitive = AppLocalizations.of(context)!.month_april;
          break;
        case 5:
          monthGenitive = AppLocalizations.of(context)!.month_may;
          break;
        case 6:
          monthGenitive = AppLocalizations.of(context)!.month_june;
          break;
        case 7:
          monthGenitive = AppLocalizations.of(context)!.month_july;
          break;
        case 8:
          monthGenitive = AppLocalizations.of(context)!.month_august;
          break;
        case 9:
          monthGenitive = AppLocalizations.of(context)!.month_september;
          break;
        case 10:
          monthGenitive = AppLocalizations.of(context)!.month_october;
          break;
        case 11:
          monthGenitive = AppLocalizations.of(context)!.month_november;
          break;
        case 12:
          monthGenitive = AppLocalizations.of(context)!.month_december;
          break;
        default:
          monthGenitive = AppLocalizations.of(context)!.month_january;
      }
      filteredResponse = filteredResponse.replaceAllMapped(
        RegExp(r'(\d+–\d+|\d+)\s+—'),
        (m) => '${m[1]} $monthGenitive —',
      );
      setState(() {
        _openAiAnswer = filteredResponse;
        _showAdAndNewSpread = true;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        if (e.toString().contains('NO_INTERNET')) {
          _openAiAnswer = AppLocalizations.of(context)!.no_internet_error;
        } else {
          _openAiAnswer = AppLocalizations.of(context)!.monthly_forecast_spread_screen_error_getting_value;
        }
        _showAdAndNewSpread = true;
        _isLoading = false;
      });
    }
  }

  Widget _buildDialogMessages() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: _messages.map((msg) {
        return Align(
          alignment: msg.isUser ? Alignment.centerRight : Alignment.centerLeft,
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 6),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              color: msg.isUser
                  ? Colors.white.withOpacity(0.15)
                  : const Color(0xFF23272F).withOpacity(0.85),
              borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(16),
                topRight: const Radius.circular(16),
                bottomLeft: msg.isUser ? const Radius.circular(16) : const Radius.circular(4),
                bottomRight: msg.isUser ? const Radius.circular(4) : const Radius.circular(16),
              ),
              border: Border.all(color: Colors.white24),
            ),
            child: Text(
              msg.text,
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        );
      }).toList(),
    );
  }

  Widget _buildTwelveCards() {
    final allFlipped = _cardFlipped.every((f) => f);
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 12),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.15),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
            bottomLeft: Radius.circular(16),
            bottomRight: Radius.circular(4),
          ),
          border: Border.all(color: Colors.white24),
        ),
        child: LayoutBuilder(
          builder: (context, constraints) {
            double cardWidth = 60.0;
            double cardHeight = cardWidth * 1.55;
            double spacing = 8.0;
            double cardsBlockWidth = cardWidth * 3 + spacing * 2;
            double buttonWidth = 120;
            return Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  width: cardsBlockWidth,
                  height: cardHeight * 4 + spacing * 3,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: List.generate(4, (row) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 2.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: List.generate(3, (col) {
                            int index = row * 3 + col;
                            return Flexible(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 2.0),
                                child: SizedBox(
                                  width: cardWidth,
                                  height: cardHeight,
                                  child: GestureDetector(
                                    onTap: () {
                                      if (!_cardFlipped[index]) {
                                        _cardKeys[index].currentState?.toggleCard();
                                        setState(() {
                                          _cardFlipped[index] = true;
                                        });
                                      }
                                    },
                                    child: FlipCard(
                                      key: _cardKeys[index],
                                      front: Image.asset(
                                        'assets/images/card_back.png',
                                        width: cardWidth,
                                        height: cardHeight,
                                        fit: BoxFit.contain,
                                      ),
                                      back: _flippedCards[index] != null
                                          ? Image.asset(
                                              'assets/cards/' + CardTranslations.cardToFileMap[_flippedCards[index]!]!,
                                              width: cardWidth,
                                              height: cardHeight,
                                              fit: BoxFit.contain,
                                            )
                                          : Container(),
                                      onFlipped: () {
                                        setState(() {});
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                        ),
                      );
                    }),
                  ),
                ),
                if (allFlipped && _showSeeMeaningButton) ...[
                  const SizedBox(height: 16),
                  SizedBox(
                    width: cardsBlockWidth,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: SizedBox(
                        width: buttonWidth,
                        height: 44,
                        child: ElevatedButton(
                          onPressed: _handleSeeMeaning,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFDBC195),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                            ),
                            elevation: 0,
                            minimumSize: const Size(0, 44),
                          ),
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              AppLocalizations.of(context)!.getAnswer,
                              style: const TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildSuggestedQuestions() {
    if (_questionSent) return const SizedBox.shrink();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ..._getTranslatedSuggestedQuestions().map((q) => _buildSuggestionText(q)),
      ],
    );
  }

  Widget _buildSuggestionText(String question) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Align(
        alignment: Alignment.centerRight,
        child: GestureDetector(
          onTap: () {
            _questionController.text = question;
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.15),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(4),
              ),
              border: Border.all(color: Colors.white24),
            ),
            child: Text(
              question,
              textAlign: TextAlign.right,
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }

  void _showInfoDialog() {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        backgroundColor: Colors.transparent,
        child: Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.9),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                AppLocalizations.of(context)!.aboutSpread,
                style: const TextStyle(
                  color: Color(0xFFDBC195),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              Text(
                AppLocalizations.of(context)!.monthly_forecast_spread_screen_monthly_forecast_explanation,
                style: const TextStyle(color: Colors.white, fontSize: 16),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Navigator.of(context).pop(),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFDBC195),
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    elevation: 0,
                  ),
                  child: Text(
                    AppLocalizations.of(context)!.gotIt,
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          centerTitle: true,
          title: Text(
            AppLocalizations.of(context)!.monthlyForecast,
            style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: GestureDetector(
                onTap: _showInfoDialog,
                child: Container(
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.13),
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                  child: const Icon(Icons.question_mark_rounded, color: Colors.white, size: 20),
                ),
              ),
            ),
          ],
        ),
        body: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/images/main-2.jpg',
                fit: BoxFit.cover,
              ),
            ),
            SafeArea(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return SingleChildScrollView(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        minHeight: constraints.maxHeight,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 32),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(18),
                              child: Image.asset(
                                'assets/images/tarolog.png',
                                width: double.infinity,
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                            const SizedBox(height: 24),
                            _buildDialogMessages(),
                            if (_showCards) _buildTwelveCards(),
                            if (_openAiAnswer != null) ...[
                              const SizedBox(height: 24),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  margin: const EdgeInsets.symmetric(vertical: 6),
                                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF23272F).withOpacity(0.85),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(16),
                                      topRight: Radius.circular(16),
                                      bottomLeft: Radius.circular(4),
                                      bottomRight: Radius.circular(16),
                                    ),
                                    border: Border.all(color: Colors.white24),
                                  ),
                                  child: Text(
                                    _openAiAnswer!,
                                    style: const TextStyle(color: Colors.white, fontSize: 16),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 24),
                              AdPromoBlock(),
                              const SizedBox(height: 18),
                              Center(
                                child: SizedBox(
                                  width: double.infinity,
                                  height: 48,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context).popUntil((route) => route.isFirst);
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(24),
                                      ),
                                      elevation: 0,
                                    ),
                                    child: Text(
                                      AppLocalizations.of(context)!.newSpread,
                                      style: const TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 24),
                              Center(
                                child: ConstrainedBox(
                                  constraints: BoxConstraints(maxWidth: 420),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                                    child: Text(
                                      AppLocalizations.of(context)!.appUsesAIForEntertainmentOnlyWeDoNotTakeResponsibilityForDecisionsYouMakeIfNecessaryPleaseConsultSpecialist,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 11,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                            const SizedBox(height: 18),
                            _buildSuggestedQuestions(),
                            const SizedBox(height: 24),
                            SizedBox(height: 10),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            if (!_questionSent)
              Positioned(
                left: 0,
                right: 0,
                bottom: 24,
                child: Container(
                  color: Colors.transparent,
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: _questionController,
                          maxLines: 3,
                          minLines: 1,
                          style: const TextStyle(color: Colors.white, fontSize: 18),
                          cursorColor: Color(0xFFDBC195),
                          decoration: InputDecoration(
                            hintText: AppLocalizations.of(context)!.enterYourQuestion,
                            hintStyle: const TextStyle(color: Colors.white54),
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.08),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide(color: Colors.white24),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide(color: Colors.white24),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide(color: Color(0xFFDBC195)),
                            ),
                            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      ElevatedButton(
                        onPressed: _isLoading ? null : _handleGetAnswer,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          padding: const EdgeInsets.all(16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                          minimumSize: const Size(48, 48),
                        ),
                        child: _isLoading
                            ? const SizedBox(
                                width: 24,
                                height: 24,
                                child: CircularProgressIndicator(strokeWidth: 2, color: Colors.black),
                              )
                            : const Icon(Icons.send, color: Color(0xFFDBC195), size: 28),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    LanguageService().removeListener(_onLanguageChanged);
    _questionController.dispose();
    super.dispose();
  }
}

class _ChatMessage {
  final String text;
  final bool isUser;
  _ChatMessage({required this.text, required this.isUser});
}

class FlipCard extends StatefulWidget {
  final Widget front;
  final Widget back;
  final VoidCallback? onFlipped;
  const FlipCard({Key? key, required this.front, required this.back, this.onFlipped}) : super(key: key);

  @override
  FlipCardState createState() => FlipCardState();
}

class FlipCardState extends State<FlipCard> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool _isFront = true;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
  }

  void toggleCard() {
    if (_isFront) {
      _controller.forward();
    } else {
      _controller.reverse();
    }
    setState(() {
      _isFront = !_isFront;
    });
    if (widget.onFlipped != null) {
      widget.onFlipped!();
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        final angle = _animation.value * 3.1416;
        final isUnder = angle > 1.5708;
        return Transform(
          alignment: Alignment.center,
          transform: Matrix4.rotationY(angle),
          child: isUnder
              ? Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.rotationY(3.1416),
                  child: widget.back,
                )
              : widget.front,
        );
      },
    );
  }
} 