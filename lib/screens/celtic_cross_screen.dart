import 'package:flutter/material.dart';
import 'dart:math';
import 'package:tarot_ai/utils/card_translations.dart';
import 'package:tarot_ai/services/translation_service.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tarot_ai/services/language_service.dart';
import 'package:tarot_ai/utils/font_utils.dart';
import 'package:tarot_ai/services/user_service.dart';
import '../widgets/ad_promo_block.dart';
import 'package:tarot_ai/l10n/app_localizations.dart';
import 'package:stack_appodeal_flutter/stack_appodeal_flutter.dart';
import '../widgets/message_bubble.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:permission_handler/permission_handler.dart';
import 'package:tarot_ai/services/journal_service.dart';
import 'package:tarot_ai/models/journal_entry.dart';

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

// Одна красная точка для записи
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

class CelticCrossScreen extends StatefulWidget {
  const CelticCrossScreen({Key? key}) : super(key: key);

  @override
  State<CelticCrossScreen> createState() => _CelticCrossScreenState();
}

class _CelticCrossScreenState extends State<CelticCrossScreen> with SingleTickerProviderStateMixin {
  final List<String> _allCardNames = CardTranslations.cards;
  final Random _random = Random();

  final TextEditingController _questionController = TextEditingController();
  bool _isLoading = false;
  String _languageCode = 'en';

  List<String?> _flippedCards = List.filled(10, null);
  List<bool> _cardFlipped = List.filled(10, false);
  List<GlobalKey<FlipCardState>> _cardKeys = List.generate(10, (_) => GlobalKey<FlipCardState>());
  bool _showCards = false;
  bool _showSeeMeaningButton = true;
  String? _openAiAnswer;
  bool _isLoadingCardsDescription = false;

  // Диалоговые сообщения
  List<_ChatMessage> _messages = [];
  bool _questionSent = false;

  // reflection state
  int _reflectionStep = 0; // 0: только AI, 1: dots, 2: интро, 3: dots, 4: вопрос, 5: поле, 6: после ответа пользователя, 7: dots, 8: финал
  String? _userReflectionText;
  bool _showDots = false;
  final TextEditingController _reflectionController = TextEditingController();
  stt.SpeechToText? _speech;
  bool _isListening = false;
  String _voiceInput = '';

  String _userName = '';
  String _userQuestion = '';
  Future<void> _loadUserName() async {
    await UserService().loadUserName();
    setState(() {
      _userName = UserService().userName;
    });
  }

  @override
  void initState() {
    super.initState();
    _speech = stt.SpeechToText();
    _reflectionController.addListener(() { setState(() {}); });
    _loadLanguage();
    _loadUserName();
    LanguageService().addListener(_onLanguageChanged);
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

  @override
  void dispose() {
    // Удаляем слушатель при уничтожении виджета
    LanguageService().removeListener(_onLanguageChanged);
    super.dispose();
  }

  void _onLanguageChanged() {
    // Принудительно обновляем UI при смене языка
    if (mounted) {
      setState(() {
        _languageCode = LanguageService().currentLanguageCode;
      });
    }
  }

  Future<void> _loadLanguage() async {
    await LanguageService().loadLanguage();
    setState(() {
      _languageCode = LanguageService().currentLanguageCode;
    });
  }

  // Метод для асинхронной загрузки описания карт
  Future<void> _loadCardsDescription() async {
    final startTime = DateTime.now();
    debugPrint('[CelticCross] _loadCardsDescription: starting at ${startTime.toIso8601String()}');
    
    // Получаем перевод названия карты через локализацию
    String getCardTranslation(String cardName) {
      final loc = AppLocalizations.of(context)!;
      final cardKey = CardTranslations.cardToLocalizationKey[cardName];
      if (cardKey != null) {
        switch (cardKey) {
          case 'card_name_the_fool': return loc.card_name_the_fool;
          case 'card_name_the_magician': return loc.card_name_the_magician;
          case 'card_name_the_high_priestess': return loc.card_name_the_high_priestess;
          case 'card_name_the_empress': return loc.card_name_the_empress;
          case 'card_name_the_emperor': return loc.card_name_the_emperor;
          case 'card_name_the_hierophant': return loc.card_name_the_hierophant;
          case 'card_name_the_lovers': return loc.card_name_the_lovers;
          case 'card_name_the_chariot': return loc.card_name_the_chariot;
          case 'card_name_strength': return loc.card_name_strength;
          case 'card_name_the_hermit': return loc.card_name_the_hermit;
          case 'card_name_wheel_of_fortune': return loc.card_name_wheel_of_fortune;
          case 'card_name_justice': return loc.card_name_justice;
          case 'card_name_the_hanged_man': return loc.card_name_the_hanged_man;
          case 'card_name_death': return loc.card_name_death;
          case 'card_name_temperance': return loc.card_name_temperance;
          case 'card_name_the_devil': return loc.card_name_the_devil;
          case 'card_name_the_tower': return loc.card_name_the_tower;
          case 'card_name_the_star': return loc.card_name_the_star;
          case 'card_name_the_moon': return loc.card_name_the_moon;
          case 'card_name_the_sun': return loc.card_name_the_sun;
          case 'card_name_judgement': return loc.card_name_judgement;
          case 'card_name_the_world': return loc.card_name_the_world;
          case 'card_name_ace_of_wands': return loc.card_name_ace_of_wands;
          case 'card_name_two_of_wands': return loc.card_name_two_of_wands;
          case 'card_name_three_of_wands': return loc.card_name_three_of_wands;
          case 'card_name_four_of_wands': return loc.card_name_four_of_wands;
          case 'card_name_five_of_wands': return loc.card_name_five_of_wands;
          case 'card_name_six_of_wands': return loc.card_name_six_of_wands;
          case 'card_name_seven_of_wands': return loc.card_name_seven_of_wands;
          case 'card_name_eight_of_wands': return loc.card_name_eight_of_wands;
          case 'card_name_nine_of_wands': return loc.card_name_nine_of_wands;
          case 'card_name_ten_of_wands': return loc.card_name_ten_of_wands;
          case 'card_name_page_of_wands': return loc.card_name_page_of_wands;
          case 'card_name_knight_of_wands': return loc.card_name_knight_of_wands;
          case 'card_name_queen_of_wands': return loc.card_name_queen_of_wands;
          case 'card_name_king_of_wands': return loc.card_name_king_of_wands;
          case 'card_name_ace_of_cups': return loc.card_name_ace_of_cups;
          case 'card_name_two_of_cups': return loc.card_name_two_of_cups;
          case 'card_name_three_of_cups': return loc.card_name_three_of_cups;
          case 'card_name_four_of_cups': return loc.card_name_four_of_cups;
          case 'card_name_five_of_cups': return loc.card_name_five_of_cups;
          case 'card_name_six_of_cups': return loc.card_name_six_of_cups;
          case 'card_name_seven_of_cups': return loc.card_name_seven_of_cups;
          case 'card_name_eight_of_cups': return loc.card_name_eight_of_cups;
          case 'card_name_nine_of_cups': return loc.card_name_nine_of_cups;
          case 'card_name_ten_of_cups': return loc.card_name_ten_of_cups;
          case 'card_name_page_of_cups': return loc.card_name_page_of_cups;
          case 'card_name_knight_of_cups': return loc.card_name_knight_of_cups;
          case 'card_name_queen_of_cups': return loc.card_name_queen_of_cups;
          case 'card_name_king_of_cups': return loc.card_name_king_of_cups;
          case 'card_name_ace_of_swords': return loc.card_name_ace_of_swords;
          case 'card_name_two_of_swords': return loc.card_name_two_of_swords;
          case 'card_name_three_of_swords': return loc.card_name_three_of_swords;
          case 'card_name_four_of_swords': return loc.card_name_four_of_swords;
          case 'card_name_five_of_swords': return loc.card_name_five_of_swords;
          case 'card_name_six_of_swords': return loc.card_name_six_of_swords;
          case 'card_name_seven_of_swords': return loc.card_name_seven_of_swords;
          case 'card_name_eight_of_swords': return loc.card_name_eight_of_swords;
          case 'card_name_nine_of_swords': return loc.card_name_nine_of_swords;
          case 'card_name_ten_of_swords': return loc.card_name_ten_of_swords;
          case 'card_name_page_of_swords': return loc.card_name_page_of_swords;
          case 'card_name_knight_of_swords': return loc.card_name_knight_of_swords;
          case 'card_name_queen_of_swords': return loc.card_name_queen_of_swords;
          case 'card_name_king_of_swords': return loc.card_name_king_of_swords;
          case 'card_name_ace_of_pentacles': return loc.card_name_ace_of_pentacles;
          case 'card_name_two_of_pentacles': return loc.card_name_two_of_pentacles;
          case 'card_name_three_of_pentacles': return loc.card_name_three_of_pentacles;
          case 'card_name_four_of_pentacles': return loc.card_name_four_of_pentacles;
          case 'card_name_five_of_pentacles': return loc.card_name_five_of_pentacles;
          case 'card_name_six_of_pentacles': return loc.card_name_six_of_pentacles;
          case 'card_name_seven_of_pentacles': return loc.card_name_seven_of_pentacles;
          case 'card_name_eight_of_pentacles': return loc.card_name_eight_of_pentacles;
          case 'card_name_nine_of_pentacles': return loc.card_name_nine_of_pentacles;
          case 'card_name_ten_of_pentacles': return loc.card_name_ten_of_pentacles;
          case 'card_name_page_of_pentacles': return loc.card_name_page_of_pentacles;
          case 'card_name_knight_of_pentacles': return loc.card_name_knight_of_pentacles;
          case 'card_name_queen_of_pentacles': return loc.card_name_queen_of_pentacles;
          case 'card_name_king_of_pentacles': return loc.card_name_king_of_pentacles;
          default: return cardName;
        }
      }
      return cardName;
    }

    final promptStartTime = DateTime.now();
    String prompt = AppLocalizations.of(context)!.celtic_cross_screen_prompt(
      getCardTranslation(_flippedCards[1] ?? ''), // challengeCard
      getCardTranslation(_flippedCards[4] ?? ''), // consciousCard
      getCardTranslation(_flippedCards[7] ?? ''), // environmentCard
      getCardTranslation(_flippedCards[5] ?? ''), // hiddenCard
      getCardTranslation(_flippedCards[8] ?? ''), // hopesCard
      getCardTranslation(_flippedCards[9] ?? ''), // outcomeCard
      getCardTranslation(_flippedCards[3] ?? ''), // pastCard
      getCardTranslation(_flippedCards[6] ?? ''), // selfCard
      getCardTranslation(_flippedCards[0] ?? ''), // situationCard
      getCardTranslation(_flippedCards[2] ?? ''), // subconsciousCard
      (_userName.isNotEmpty ? _userName : AppLocalizations.of(context)!.the_user),
      _userQuestion,
    );
    final promptEndTime = DateTime.now();
    debugPrint('[CelticCross] _loadCardsDescription: prompt created in ${promptEndTime.difference(promptStartTime).inMilliseconds}ms');

    try {
      final apiStartTime = DateTime.now();
      debugPrint('[CelticCross] _loadCardsDescription: calling TranslationService at ${apiStartTime.toIso8601String()}');
      
      debugPrint('[CelticCross] Using language code: $_languageCode');
      final response = await TranslationService().getTranslatedText(
        text: prompt,
        targetLanguageCode: _languageCode,
        isTarotReading: true,
      );
      
      final apiEndTime = DateTime.now();
      debugPrint('[CelticCross] _loadCardsDescription: API response received in ${apiEndTime.difference(apiStartTime).inMilliseconds}ms');
      
      if (mounted) {
        setState(() {
          _openAiAnswer = response;
          _isLoadingCardsDescription = false;
        });
        // Запускаем последовательность рефлексии после получения ответа
        _startReflectionSequence();
      }
      
      final totalTime = DateTime.now();
      debugPrint('[CelticCross] _loadCardsDescription: completed successfully in ${totalTime.difference(startTime).inMilliseconds}ms');
    } catch (e) {
      final errorTime = DateTime.now();
      debugPrint('[CelticCross] _loadCardsDescription: ERROR after ${errorTime.difference(startTime).inMilliseconds}ms: $e');
      
      if (mounted) {
        setState(() {
          if (e.toString().contains('NO_INTERNET')) {
            _openAiAnswer = AppLocalizations.of(context)!.no_internet_error;
          } else if (e.toString().contains('Timeout')) {
            _openAiAnswer = 'Сервер временно недоступен. Пожалуйста, попробуйте еще раз через несколько секунд.';
          } else {
            _openAiAnswer = AppLocalizations.of(context)!.errorGettingSpreadMeaningPleaseTryAgain;
          }
          _isLoadingCardsDescription = false;
        });
      }
    }
  }

  // Функция для получения переведенных предложенных вопросов
  List<String> _getTranslatedSuggestedQuestions() {
    final l10n = AppLocalizations.of(context);
    if (l10n != null) {
      return [
        l10n.celtic_cross_screen_suggested_questions_1,
        l10n.celtic_cross_screen_suggested_questions_2,
        l10n.celtic_cross_screen_suggested_questions_3,
      ];
    }
    return []; // Возвращаем пустой список, если локализация недоступна
  }

  // Функция для получения переведенного приветственного сообщения
  String _getTranslatedInitialMessage() {
    final l10n = AppLocalizations.of(context);
    if (l10n != null) {
      return l10n.good_day_please_write_your_question_below;
    }
    return AppLocalizations.of(context)!.good_day_please_write_your_question_below;
  }

  void _handleGetAnswer() async {
    String userText = _questionController.text.trim();
    if (userText.isEmpty) return;
    setState(() {
      _isLoading = true;
      // Сохраняем вопрос пользователя
      _userQuestion = userText;
      _messages.add(_ChatMessage(text: userText, isUser: true));
      _questionController.clear();
      _questionSent = true;
    });
    await Future.delayed(const Duration(milliseconds: 300));
    setState(() {
      _messages.add(_ChatMessage(
        text: AppLocalizations.of(context)!.celtic_cross_screen_please_open_cards,
        isUser: false,
      ));
      // Случайно выбираем 10 карт
      List<String> available = List.from(_allCardNames);
      available.shuffle(_random);
      _flippedCards = available.take(10).toList();
      _cardFlipped = List.filled(10, false);
      _showCards = true;
      _isLoading = false;
    });
  }

  void _handleSeeMeaning() async {
    final startTime = DateTime.now();
    debugPrint('[CelticCross] _handleSeeMeaning: starting at ${startTime.toIso8601String()}');
    
    setState(() {
      _showSeeMeaningButton = false;
      _isLoadingCardsDescription = true;
    });

    // Запускаем рекламу и генерацию расклада параллельно
    debugPrint('[CelticCross] _handleSeeMeaning: starting parallel execution');
    await Future.wait([
      _showAd(),
      _loadCardsDescription(),
    ]);
    
    final endTime = DateTime.now();
    debugPrint('[CelticCross] _handleSeeMeaning: completed in ${endTime.difference(startTime).inMilliseconds}ms');
  }

  // Метод для показа рекламы
  Future<void> _showAd() async {
    final startTime = DateTime.now();
    debugPrint('[CelticCross] _showAd: starting at ${startTime.toIso8601String()}');
    
    try {
      bool isLoaded = await Appodeal.isLoaded(AppodealAdType.Interstitial);
      debugPrint('[CelticCross] _showAd: isLoaded = $isLoaded');
      
      if (isLoaded) {
        debugPrint('[CelticCross] _showAd: showing ad');
        // Показываем рекламу, но не ждем её завершения
        Appodeal.show(AppodealAdType.Interstitial);
        // Кэшируем следующую рекламу
        Appodeal.cache(AppodealAdType.Interstitial);
      } else {
        debugPrint('[CelticCross] _showAd: caching ad');
        await Appodeal.cache(AppodealAdType.Interstitial);
      }
      
      final endTime = DateTime.now();
      debugPrint('[CelticCross] _showAd: completed in ${endTime.difference(startTime).inMilliseconds}ms');
    } catch (e, st) {
      final errorTime = DateTime.now();
      debugPrint('[CelticCross] _showAd: ERROR after ${errorTime.difference(startTime).inMilliseconds}ms: $e\n$st');
    }
  }

  // === ДОБАВЛЯЕМ МЕТОДЫ ДЛЯ РЕФЛЕКСИИ ===
  void _startReflectionSequence() async {
    // 1. dots (3.5 сек)
    await Future.delayed(const Duration(milliseconds: 500));
    setState(() { _reflectionStep = 1; _showDots = true; });
    await Future.delayed(const Duration(milliseconds: 3500));
    setState(() { _reflectionStep = 2; _showDots = false; });
    // 2. вопрос для рефлексии
    setState(() { _reflectionStep = 2; _showDots = false; });
    // 3. форма для пользователя через 1 секунду
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

    // Сохраняем в журнал
    try {
      final entry = JournalEntry(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        date: DateTime.now(),
        spreadKey: 'celtic_cross',
        spreadType: AppLocalizations.of(context)!.celtic_cross_screen_title,
        spreadTitle: AppLocalizations.of(context)!.celtic_cross_screen_title,
        spreadDescription: AppLocalizations.of(context)!.celtic_cross_screen_description,
        cards: _flippedCards.whereType<String>().toList(),
        userNote: '',
        spreadData: null,
        aiInsight: _openAiAnswer,
        reflectionText: _userReflectionText,
        isReflectionComplete: true,
      );
      await JournalService().addEntry(entry);

      // Показываем анимацию троеточия и паузу перед финальным сообщением
      await Future.delayed(const Duration(milliseconds: 3500));
      setState(() {
        _showDots = false;
        _reflectionStep = 7;
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

  Widget _buildCelticCrossCards() {
    final allFlipped = _cardFlipped.every((f) => f);
    final allCardsAvailable = _flippedCards.every((card) => card != null);
    debugPrint('allFlipped: ' + allFlipped.toString() + ', showBtn: ' + _showSeeMeaningButton.toString());
    debugPrint('_cardFlipped: ' + _cardFlipped.toString());
    debugPrint('_flippedCards: ' + _flippedCards.toString());
    debugPrint('allCardsAvailable: ' + allCardsAvailable.toString());
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
            double cardWidth = constraints.maxWidth / 7.5;
            double cardHeight = cardWidth * 1.6;
            return Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Center(
                  child: SizedBox(
                    width: cardWidth * 5.5,
                    height: cardHeight * 4.5,
                    child: Stack(
                      children: [
                        // Центральный крест
                        Positioned(
                          left: cardWidth * 1.5,
                          top: cardHeight * 1.2,
                          child: _buildFlipCard(0, cardWidth, cardHeight), // 1. Ситуация
                        ),
                        Positioned(
                          left: cardWidth * 1.5,
                          top: cardHeight * 1.2,
                          child: Transform.rotate(
                            angle: -1.5708, // -90 градусов
                            child: _buildFlipCard(1, cardWidth, cardHeight), // 2. Вызов
                          ),
                        ),
                        Positioned(
                          left: cardWidth * 1.5,
                          top: cardHeight * 0.1,
                          child: _buildFlipCard(2, cardWidth, cardHeight), // 3. Подсознательное (верх)
                        ),
                        Positioned(
                          left: cardWidth * 1.5,
                          top: cardHeight * 2.3,
                          child: _buildFlipCard(3, cardWidth, cardHeight), // 4. Прошлое (внизу)
                        ),
                        Positioned(
                          left: cardWidth * 3.0,
                          top: cardHeight * 1.2,
                          child: _buildFlipCard(4, cardWidth, cardHeight), // 5. Сознание / цель (справа)
                        ),
                        Positioned(
                          left: cardWidth * 0.1,
                          top: cardHeight * 1.2,
                          child: _buildFlipCard(5, cardWidth, cardHeight), // 6. Будущее (слева)
                        ),
                        Positioned(
                          left: cardWidth * 4.5,
                          top: cardHeight * 0.1 + cardHeight * 3.15,
                          child: _buildFlipCard(6, cardWidth, cardHeight), // 7. Вопрошающий (нижняя)
                        ),
                        Positioned(
                          left: cardWidth * 4.5,
                          top: cardHeight * 0.1 + cardHeight * 2.1,
                          child: _buildFlipCard(7, cardWidth, cardHeight), // 8. Окружение (третья)
                        ),
                        Positioned(
                          left: cardWidth * 4.5,
                          top: cardHeight * 0.1 + cardHeight * 1.05,
                          child: _buildFlipCard(8, cardWidth, cardHeight), // 9. Надежды и опасения (вторая)
                        ),
                        Positioned(
                          left: cardWidth * 4.5,
                          top: cardHeight * 0.1,
                          child: _buildFlipCard(9, cardWidth, cardHeight), // 10. Итог (верхняя)
                        ),
                      ],
                    ),
                  ),
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
                if (allFlipped && _isLoadingCardsDescription)
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Container(
                      width: 220,
                      height: 48,
                      decoration: BoxDecoration(
                        color: const Color(0xFFDBC195),
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            width: 20,
                            height: 20,
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(width: 12),
                          Text(
                            AppLocalizations.of(context)!.analyzing_cards,
                            style: const TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ],
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

  Widget _buildFlipCard(int index, double width, double height) {
    return GestureDetector(
      onTap: () {
        if (!_cardFlipped[index]) {
          _cardKeys[index].currentState?.toggleCard();
          setState(() {});
        }
      },
      child: FlipCard(
        key: _cardKeys[index],
        front: Image.asset(
          'assets/images/card_back.png',
          width: width,
          height: height,
          fit: BoxFit.contain,
        ),
        back: _flippedCards[index] != null
            ? Builder(
                builder: (context) {
                  final fileName = CardTranslations.cardToFileMap[_flippedCards[index]!];
                  if (fileName == null) {
                    debugPrint('CARD ASSET ERROR: No file mapping for card: \'${_flippedCards[index]}\'');
                  }
                  return Image.asset(
                    'assets/cards/' + (fileName ?? 'NOT_FOUND.jpg'),
                    width: width,
                    height: height,
                    fit: BoxFit.contain,
                    errorBuilder: (context, error, stackTrace) {
                      debugPrint('CARD ASSET ERROR: Unable to load asset: assets/cards/' + (fileName ?? 'NOT_FOUND.jpg'));
                      return Center(child: Text(AppLocalizations.of(context)!.celtic_cross_screen_unable_to_load_card, style: const TextStyle(color: Colors.red)));
                    },
                  );
                },
              )
            : Container(),
        onFlipped: () {
          if (!_cardFlipped[index]) {
            setState(() {
              _cardFlipped[index] = true;
            });
          }
        },
      ),
    );
  }

  Widget _buildSuggestedQuestions() {
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
                loc.celtic_cross_screen_what_is_celtic_cross_dialog,
                style: const TextStyle(
                  color: Color(0xFFDBC195),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              Flexible(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        loc.celtic_cross_screen_celtic_cross_explanation_dialog,
                        style: const TextStyle(color: Colors.white, fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 16),
                      Image.asset(
                        'assets/images/kelt.png',
                        width: 260,
                        fit: BoxFit.contain,
                      ),
                    ],
                  ),
                ),
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
                    loc.celtic_cross_screen_understand_button,
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          AppLocalizations.of(context)!.celticCrossTitle,
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
                          if (!_questionSent) ...[
                            const SizedBox(height: 18),
                            _buildSuggestedQuestions(),
                            const SizedBox(height: 18),
                          ],
                          if (_showCards) _buildCelticCrossCards(),
                          if (_openAiAnswer != null) ...[
                            const SizedBox(height: 24),
                            MessageBubble(
                              key: const ValueKey('openai_answer'),
                              text: _openAiAnswer!,
                              isUser: false,
                            ),
                            const SizedBox(height: 24),
                            _buildReflectionBlock(),
                            const SizedBox(height: 24),
                            // === Блок рекламы, кнопки и дисклеймера — только после первого ответа от OpenAI ===
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
                                    AppLocalizations.of(context)!.appUsageDisclaimer,
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
                          SizedBox(height: MediaQuery.of(context).padding.bottom + 10),
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
    );
  }
}

class _ChatMessage {
  final String text;
  final bool isUser;
  _ChatMessage({required this.text, required this.isUser});
}

// Кастомный FlipCard с поддержкой onFlipped
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