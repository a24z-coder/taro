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
import 'package:tarot_ai/services/review_service.dart';
import '../widgets/message_bubble.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:permission_handler/permission_handler.dart';
import 'package:tarot_ai/services/journal_service.dart';
import 'package:tarot_ai/models/journal_entry.dart';
import '../mixins/session_check_mixin.dart';

// dots анимация
class _AnimatedDotsWidget extends StatefulWidget {
  const _AnimatedDotsWidget({Key? key}) : super(key: key);
  @override
  State<_AnimatedDotsWidget> createState() => _AnimatedDotsWidgetState();
}

class _AnimatedDotsWidgetState extends State<_AnimatedDotsWidget> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 900))..repeat();
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, top: 8, bottom: 8),
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          int dots = 1 + (_controller.value * 3).floor();
          return Row(
            mainAxisSize: MainAxisSize.min,
            children: List.generate(dots, (i) =>
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2),
                child: Container(
                  width: 8, height: 8,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.7),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

// Анимация красной точки для записи
class _VoiceRecordingDot extends StatefulWidget {
  @override
  State<_VoiceRecordingDot> createState() => _VoiceRecordingDotState();
}

class _VoiceRecordingDotState extends State<_VoiceRecordingDot> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 900))..repeat();
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    double scale = 1 + 0.3 * (0.5 - (0.5 - _controller.value).abs());
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 1),
      width: 10 * scale,
      height: 10 * scale,
      decoration: BoxDecoration(
        color: Colors.red.withOpacity(0.8),
        shape: BoxShape.circle,
      ),
    );
  }
}

class ProsConsSpreadScreen extends StatefulWidget {
  const ProsConsSpreadScreen({Key? key}) : super(key: key);

  @override
  State<ProsConsSpreadScreen> createState() => _ProsConsSpreadScreenState();
}

class _ProsConsSpreadScreenState extends State<ProsConsSpreadScreen> with SessionCheckMixin {
  final TextEditingController _questionController = TextEditingController();
  bool _isLoading = false;
  String _languageCode = 'en';

  final List<String> _allCardNames = CardTranslations.cards;
  final Random _random = Random();
  List<String?> _flippedCards = List.filled(3, null);
  List<bool> _cardFlipped = List.filled(3, false);
  List<GlobalKey<FlipCardState>> _cardKeys = List.generate(3, (_) => GlobalKey<FlipCardState>());
  bool _showCards = false;
  bool _showSeeMeaningButton = true;
  bool _showAdAndNewSpread = false;

  List<_ChatMessage> _messages = [];
  bool _questionSent = false;

  String _userName = '';
  String? _openAiAnswer;
  
  // === ДОБАВЛЯЕМ ПЕРЕМЕННЫЕ ДЛЯ РЕФЛЕКСИИ ===
  int _reflectionStep = 0; // 0: только AI, 1: dots, 2: вопрос, 5: форма, 6: после ответа пользователя, 7: финал
  bool _showDots = false;
  final TextEditingController _reflectionController = TextEditingController();
  String? _userReflectionText;
  bool _reflectionSaved = false;
  stt.SpeechToText? _speech;
  bool _isListening = false;
  String _voiceInput = '';
  
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
        l10n.pros_cons_spread_screen_suggested_questions_1,
        l10n.pros_cons_spread_screen_suggested_questions_2,
        l10n.pros_cons_spread_screen_suggested_questions_3,
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
    _speech = stt.SpeechToText();
    _reflectionController.addListener(() { setState(() {}); });
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
    
    // Проверяем сессию
    checkSession();
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
        text: AppLocalizations.of(context)!.requestReceived,
        isUser: false,
      ));
      List<String> available = List.from(_allCardNames);
      available.shuffle(_random);
      _flippedCards = available.take(3).toList();
      _cardFlipped = [false, false, false];
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
      debugPrint('[ProsCons] Starting ad loading at \x1b[36m${adStartTime.toIso8601String()}\x1b[0m');
      bool isLoaded = await Appodeal.isLoaded(AppodealAdType.Interstitial);
      if (isLoaded) {
        await Appodeal.show(AppodealAdType.Interstitial);
        await Appodeal.cache(AppodealAdType.Interstitial);
        final adEndTime = DateTime.now();
        debugPrint('[ProsCons] Appodeal Interstitial shown successfully at ${adEndTime.toIso8601String()}, duration: ${adEndTime.difference(adStartTime).inMilliseconds}ms');
      } else {
        await Appodeal.cache(AppodealAdType.Interstitial);
        final adEndTime = DateTime.now();
        debugPrint('[ProsCons] Appodeal Interstitial cached for next time at ${adEndTime.toIso8601String()}, duration: ${adEndTime.difference(adStartTime).inMilliseconds}ms');
      }
    } catch (e, st) {
      final adEndTime = DateTime.now();
      debugPrint('[ProsCons] ERROR showing Appodeal Interstitial at ${adEndTime.toIso8601String()}: $e\n$st');
    }
  }

  void _showInfoDialog() {
    final loc = AppLocalizations.of(context)!;
    showDialog(
      context: context,
      builder: (context) => Dialog(
        backgroundColor: Colors.transparent,
        child: Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.9),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                loc.pros_cons_spread_screen_what_is_pros_cons_spread,
                style: const TextStyle(
                  color: Color(0xFFDBC195),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              Text(
                loc.pros_cons_spread_screen_pros_cons_spread_explanation,
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
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                  child: Text(
                    loc.pros_cons_spread_screen_understand_button,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDialogMessages() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: _messages.map((msg) {
        return MessageBubble(
          key: ValueKey(msg.text + msg.isUser.toString()),
          text: msg.text,
          isUser: msg.isUser,
        );
      }).toList(),
    );
  }

  Widget _buildThreeCards() {
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
            double totalSpacing = 4 * 8.0;
            double cardWidth = ((constraints.maxWidth - totalSpacing) / 3).clamp(36.0, 90.0);
            double cardHeight = cardWidth * 1.55;
            return Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: List.generate(3, (index) {
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
                if (allFlipped && _showSeeMeaningButton)
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: SizedBox(
                      width: 220,
                      height: 48,
                      child: ElevatedButton(
                        onPressed: _handleSeeMeaning,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFDBC195),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                          elevation: 0,
                        ),
                        child: Text(
                          AppLocalizations.of(context)!.seeMeaning,
                          style: const TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
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
            AppLocalizations.of(context)!.prosConsSpreadTitle,
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
                              borderRadius: BorderRadius.circular(24),
                              child: Image.asset(
                                'assets/images/tarolog.png',
                                width: double.infinity,
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                            const SizedBox(height: 24),
                            _buildDialogMessages(),
                            if (_showCards) _buildThreeCards(),
                            if (_isLoading && _openAiAnswer == null) ...[
                              const SizedBox(height: 24),
                              MessageBubble(
                                key: const ValueKey('loading_bubble'),
                                isUser: false,
                                text: '',
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    const SizedBox(
                                      width: 20,
                                      height: 20,
                                      child: CircularProgressIndicator(
                                        strokeWidth: 2,
                                        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                                      ),
                                    ),
                                    const SizedBox(width: 12),
                                    Text(
                                      AppLocalizations.of(context)!.analyzing_cards,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                            if (_openAiAnswer != null) ...[
                              MessageBubble(
                                key: const ValueKey('openai_answer'),
                                text: _openAiAnswer!,
                                isUser: false,
                              ),
                              const SizedBox(height: 24),
                              _buildReflectionBlock(),
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
                                      AppLocalizations.of(context)!.spreadDisclaimer,
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
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: _questionController,
                          maxLines: 1,
                          minLines: 1,
                          style: const TextStyle(color: Colors.white, fontSize: 18),
                          cursorColor: Color(0xFFDBC195),
                          decoration: InputDecoration(
                            hintText: AppLocalizations.of(context)!.enter_your_question,
                            hintStyle: const TextStyle(color: Colors.white54),
                            filled: true,
                            fillColor: Colors.transparent,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(24),
                              borderSide: BorderSide(color: Colors.white24),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(24),
                              borderSide: BorderSide(color: Colors.white24),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(24),
                              borderSide: BorderSide(color: Color(0xFFDBC195)),
                            ),
                            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      ElevatedButton(
                        onPressed: _isLoading ? null : _handleGetAnswer,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          elevation: 6,
                          shadowColor: Colors.black.withOpacity(0.18),
                          minimumSize: const Size(54, 54),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                        ),
                        child: Icon(Icons.send, color: Color(0xFFDBC195), size: 28),
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
    _reflectionController.dispose();
    super.dispose();
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
    final l10n = AppLocalizations.of(context)!;
    final cards = _flippedCards.whereType<String>().toList();
    String proCardRu = cards.length > 0 ? CardTranslations.getTranslatedCardName(cards[0]!, l10n) : '';
    String conCardRu = cards.length > 1 ? CardTranslations.getTranslatedCardName(cards[1]!, l10n) : '';
    String adviceCardRu = cards.length > 2 ? CardTranslations.getTranslatedCardName(cards[2]!, l10n) : '';
    String userText = _messages.firstWhere((m) => m.isUser, orElse: () => _ChatMessage(text: '', isUser: true)).text;
    String prompt = l10n.pros_cons_three_card_prompt(
      adviceCardRu,
      conCardRu,
      proCardRu,
      _userName.isNotEmpty ? _userName : l10n.the_user,
      userText,
    );
    print('[ProsConsSpread] proCardRu: ' + proCardRu);
    print('[ProsConsSpread] conCardRu: ' + conCardRu);
    print('[ProsConsSpread] adviceCardRu: ' + adviceCardRu);
    print('[ProsConsSpread] prompt: ' + prompt);
    try {
      final response = await TranslationService().getTranslatedText(
        text: prompt,
        targetLanguageCode: _languageCode,
        isTarotReading: true,
      );
      setState(() {
        _openAiAnswer = response;
        _showAdAndNewSpread = true;
        _isLoading = false;
      });
      _startReflectionSequence();
              try {
          // Проверяем, не оценил ли пользователь уже приложение
          if (!await ReviewService().getStatistics().then((stats) => stats['hasRated'] ?? false)) {
            final prefs = await SharedPreferences.getInstance();
            int spreadCount = prefs.getInt('spread_count') ?? 0;
            spreadCount++;
            await prefs.setInt('spread_count', spreadCount);
            // Показываем после 3-го расклада, потом через каждые 5 (8, 13, 18, 23...)
            if (spreadCount == 3 || (spreadCount >= 8 && (spreadCount - 3) % 5 == 0)) {
              if (await ReviewService().shouldRequestReview()) {
                await ReviewService().requestReviewWithFallback();
                await ReviewService().markAsRated();
              }
            }
          }
        } catch (e) {
          debugPrint('[ProsCons] ReviewService error: $e');
        }
    } catch (e) {
      setState(() {
        if (e.toString().contains('NO_INTERNET')) {
          _openAiAnswer = AppLocalizations.of(context)!.no_internet_error;
        } else {
          _openAiAnswer = AppLocalizations.of(context)!.errorGettingSpreadMeaning;
        }
        _showAdAndNewSpread = true;
        _isLoading = false;
      });
    }
  }

  void _startReflectionSequence() async {
    await Future.delayed(const Duration(milliseconds: 500));
    setState(() { _reflectionStep = 1; _showDots = true; });
    await Future.delayed(const Duration(milliseconds: 3500));
    setState(() { _reflectionStep = 2; _showDots = false; });
    setState(() { _reflectionStep = 2; _showDots = false; });
    await Future.delayed(const Duration(milliseconds: 1000));
    setState(() { _reflectionStep = 5; });
  }

  void _onSendReflection() async {
    if (_reflectionController.text.trim().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text("Please write your thoughts."),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }
    setState(() {
      _userReflectionText = _reflectionController.text.trim();
      _reflectionStep = 6;
      _showDots = true;
    });
    try {
      // Сохраняем в журнал
      final entry = JournalEntry(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        date: DateTime.now(),
        spreadKey: 'pros_cons',
        spreadType: AppLocalizations.of(context)!.pros_cons_spread_screen_title,
        spreadTitle: AppLocalizations.of(context)!.pros_cons_spread_screen_title,
        spreadDescription: AppLocalizations.of(context)!.pros_cons_spread_screen_description,
        cards: _flippedCards.whereType<String>().toList(),
        userNote: '',
        spreadData: null,
        aiInsight: _openAiAnswer,
        reflectionText: _userReflectionText,
        isReflectionComplete: true,
      );
      await JournalService().addEntry(entry);
      await Future.delayed(const Duration(milliseconds: 3500));
      setState(() {
        _showDots = false;
        _reflectionStep = 7;
        _reflectionSaved = true;
      });
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Error saving: "+e.toString()),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  Future<void> _startListening() async {
    final status = await Permission.microphone.request();
    if (!status.isGranted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(AppLocalizations.of(context)!.quick_reading_result_screen_microphone_permission_error),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }
    if (_speech == null) return;
    bool available = await _speech!.initialize(
      onStatus: (status) {
        if (status == 'done' || status == 'notListening') {
          setState(() => _isListening = false);
        }
      },
      onError: (error) {
        setState(() => _isListening = false);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(AppLocalizations.of(context)!.quick_reading_result_screen_speech_recognition_error(error.errorMsg)),
            backgroundColor: Colors.red,
          ),
        );
      },
    );
    if (available) {
      setState(() {
        _isListening = true;
        _voiceInput = '';
      });
      await _speech!.listen(
        localeId: _languageCode,
        onResult: (result) {
          setState(() {
            _voiceInput = result.recognizedWords;
            _reflectionController.text = _voiceInput;
            _reflectionController.selection = TextSelection.fromPosition(TextPosition(offset: _reflectionController.text.length));
          });
        },
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(AppLocalizations.of(context)!.quick_reading_result_screen_speech_not_available),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  Future<void> _stopListening() async {
    if (_speech == null) return;
    await _speech!.stop();
    setState(() => _isListening = false);
  }

  Widget _buildReflectionBlock() {
    final l10n = AppLocalizations.of(context)!;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (_reflectionStep >= 0)
          MessageBubble(
            text: l10n.quick_reading_result_screen_reflection_intro.replaceAll(_userName, _userName.isNotEmpty ? _userName : l10n.the_user),
            isUser: false,
          ),
        if (_reflectionStep == 1 && _showDots)
          const _AnimatedDotsWidget(),
        if (_reflectionStep >= 2)
          MessageBubble(
            text: l10n.quick_reading_result_screen_reflection_question,
            isUser: false,
          ),
        if (_reflectionStep >= 5 && _reflectionStep < 6)
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              margin: const EdgeInsets.only(left: 60, right: 12, bottom: 10),
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(18),
                        border: Border.all(color: Colors.white.withOpacity(0.3)),
                      ),
                      child: TextField(
                        controller: _reflectionController,
                        minLines: 1,
                        maxLines: 4,
                        style: const TextStyle(color: Colors.white, fontSize: 16, fontFamily: 'NotoSans'),
                        decoration: InputDecoration(
                          hintText: l10n.quick_reading_result_screen_write_thoughts_hint,
                          hintStyle: const TextStyle(color: Colors.white70),
                          border: InputBorder.none,
                          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                        ),
                        cursorColor: Color(0xFFDBC195),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  // Кнопка отправки
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.arrow_forward, color: Color(0xFFDBC195)),
                      onPressed: _reflectionController.text.trim().isEmpty ? null : _onSendReflection,
                    ),
                  ),
                  const SizedBox(width: 4),
                  // Кнопка микрофона или стопа
                  if (!_isListening)
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.mic, color: Color(0xFFDBC195)),
                        onPressed: _startListening,
                      ),
                    )
                  else
                    Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.stop, color: Colors.white),
                        onPressed: _stopListening,
                        iconSize: 28,
                        padding: EdgeInsets.zero,
                      ),
                    ),
                  // Анимация записи
                  if (_isListening)
                    Padding(
                      padding: const EdgeInsets.only(left: 6, right: 2),
                      child: SizedBox(
                        width: 28,
                        height: 28,
                        child: _VoiceRecordingDot(),
                      ),
                    ),
                ],
              ),
            ),
          ),
        if (_reflectionStep >= 6 && _userReflectionText != null)
          MessageBubble(
            text: _userReflectionText!,
            isUser: true,
          ),
        if (_reflectionStep == 6 && _showDots)
          const _AnimatedDotsWidget(),
        if (_reflectionStep == 7)
          MessageBubble(
            text: l10n.quick_reading_result_screen_reflection_final,
            isUser: false,
          ),
      ],
    );
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