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

class FiveCardSpreadScreen extends StatefulWidget {
  const FiveCardSpreadScreen({Key? key}) : super(key: key);

  @override
  State<FiveCardSpreadScreen> createState() => _FiveCardSpreadScreenState();
}

class _FiveCardSpreadScreenState extends State<FiveCardSpreadScreen> {
  final TextEditingController _questionController = TextEditingController();
  bool _isLoading = false;
  String _languageCode = 'en';

  // Для карт
  final List<String> _allCardNames = CardTranslations.cards;
  final Random _random = Random();
  List<String?> _flippedCards = List.filled(5, null);
  List<bool> _cardFlipped = List.filled(5, false);
  List<GlobalKey<FlipCardState>> _cardKeys = List.generate(5, (_) => GlobalKey<FlipCardState>());
  bool _showCards = false;
  bool _showSeeMeaningButton = true;
  bool _showAdAndNewSpread = false;

  // Диалоговые сообщения
  List<_ChatMessage> _messages = [];
  bool _questionSent = false;

  String _userName = '';
  String? _openAiAnswer;
  String _userQuestion = '';
  bool _isLoadingAnswer = false;

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
        l10n.five_cards_screen_suggested_questions_1,
        l10n.five_cards_screen_suggested_questions_2,
        l10n.five_cards_screen_suggested_questions_3,
      ];
    }
    return []; // Возвращаем пустой список, если локализация недоступна
  }

  // Функция для получения переведенного приветственного сообщения
  String _getTranslatedInitialMessage() {
    return AppLocalizations.of(context)!.good_day_please_write_your_question_below;
  }

  // Метод для загрузки описания карт от OpenAI
  Future<void> _loadCardsDescription() async {
    if (_isLoadingAnswer) return;
    
    final startTime = DateTime.now();
    debugPrint('[FiveCard] _loadCardsDescription: starting at ${startTime.toIso8601String()}');
    
    setState(() {
      _isLoadingAnswer = true;
    });

    try {
      final promptStartTime = DateTime.now();
      debugPrint('[FiveCard] Starting prompt formation at ${promptStartTime.toIso8601String()}');
      
      // Логируем значения перед формированием промпта
      final actualUserName = _userName.isNotEmpty ? _userName : AppLocalizations.of(context)!.the_user;
      debugPrint('[FiveCardPrompt] userName: [33m"'+actualUserName+'"[0m');
      debugPrint('[FiveCardPrompt] userQuestion: [33m"'+_userQuestion+'"[0m');
      for (int i = 0; i < 5; i++) {
        debugPrint('[FiveCardPrompt] card[$i]: [33m"'+(_flippedCards[i] ?? '')+'"[0m');
      }
      
      String getCardTranslation(String? cardName) {
        if (cardName == null) return '';
        final cardKey = CardTranslations.cardToLocalizationKey[cardName];
        if (cardKey != null) {
          switch (cardKey) {
            case 'card_name_the_fool': return AppLocalizations.of(context)!.card_name_the_fool;
            case 'card_name_the_magician': return AppLocalizations.of(context)!.card_name_the_magician;
            case 'card_name_the_high_priestess': return AppLocalizations.of(context)!.card_name_the_high_priestess;
            case 'card_name_the_empress': return AppLocalizations.of(context)!.card_name_the_empress;
            case 'card_name_the_emperor': return AppLocalizations.of(context)!.card_name_the_emperor;
            case 'card_name_the_hierophant': return AppLocalizations.of(context)!.card_name_the_hierophant;
            case 'card_name_the_lovers': return AppLocalizations.of(context)!.card_name_the_lovers;
            case 'card_name_the_chariot': return AppLocalizations.of(context)!.card_name_the_chariot;
            case 'card_name_strength': return AppLocalizations.of(context)!.card_name_strength;
            case 'card_name_the_hermit': return AppLocalizations.of(context)!.card_name_the_hermit;
            case 'card_name_wheel_of_fortune': return AppLocalizations.of(context)!.card_name_wheel_of_fortune;
            case 'card_name_justice': return AppLocalizations.of(context)!.card_name_justice;
            case 'card_name_the_hanged_man': return AppLocalizations.of(context)!.card_name_the_hanged_man;
            case 'card_name_death': return AppLocalizations.of(context)!.card_name_death;
            case 'card_name_temperance': return AppLocalizations.of(context)!.card_name_temperance;
            case 'card_name_the_devil': return AppLocalizations.of(context)!.card_name_the_devil;
            case 'card_name_the_tower': return AppLocalizations.of(context)!.card_name_the_tower;
            case 'card_name_the_star': return AppLocalizations.of(context)!.card_name_the_star;
            case 'card_name_the_moon': return AppLocalizations.of(context)!.card_name_the_moon;
            case 'card_name_the_sun': return AppLocalizations.of(context)!.card_name_the_sun;
            case 'card_name_judgement': return AppLocalizations.of(context)!.card_name_judgement;
            case 'card_name_the_world': return AppLocalizations.of(context)!.card_name_the_world;
            case 'card_name_ace_of_wands': return AppLocalizations.of(context)!.card_name_ace_of_wands;
            case 'card_name_two_of_wands': return AppLocalizations.of(context)!.card_name_two_of_wands;
            case 'card_name_three_of_wands': return AppLocalizations.of(context)!.card_name_three_of_wands;
            case 'card_name_four_of_wands': return AppLocalizations.of(context)!.card_name_four_of_wands;
            case 'card_name_five_of_wands': return AppLocalizations.of(context)!.card_name_five_of_wands;
            case 'card_name_six_of_wands': return AppLocalizations.of(context)!.card_name_six_of_wands;
            case 'card_name_seven_of_wands': return AppLocalizations.of(context)!.card_name_seven_of_wands;
            case 'card_name_eight_of_wands': return AppLocalizations.of(context)!.card_name_eight_of_wands;
            case 'card_name_nine_of_wands': return AppLocalizations.of(context)!.card_name_nine_of_wands;
            case 'card_name_ten_of_wands': return AppLocalizations.of(context)!.card_name_ten_of_wands;
            case 'card_name_page_of_wands': return AppLocalizations.of(context)!.card_name_page_of_wands;
            case 'card_name_knight_of_wands': return AppLocalizations.of(context)!.card_name_knight_of_wands;
            case 'card_name_queen_of_wands': return AppLocalizations.of(context)!.card_name_queen_of_wands;
            case 'card_name_king_of_wands': return AppLocalizations.of(context)!.card_name_king_of_wands;
            case 'card_name_ace_of_cups': return AppLocalizations.of(context)!.card_name_ace_of_cups;
            case 'card_name_two_of_cups': return AppLocalizations.of(context)!.card_name_two_of_cups;
            case 'card_name_three_of_cups': return AppLocalizations.of(context)!.card_name_three_of_cups;
            case 'card_name_four_of_cups': return AppLocalizations.of(context)!.card_name_four_of_cups;
            case 'card_name_five_of_cups': return AppLocalizations.of(context)!.card_name_five_of_cups;
            case 'card_name_six_of_cups': return AppLocalizations.of(context)!.card_name_six_of_cups;
            case 'card_name_seven_of_cups': return AppLocalizations.of(context)!.card_name_seven_of_cups;
            case 'card_name_eight_of_cups': return AppLocalizations.of(context)!.card_name_eight_of_cups;
            case 'card_name_nine_of_cups': return AppLocalizations.of(context)!.card_name_nine_of_cups;
            case 'card_name_ten_of_cups': return AppLocalizations.of(context)!.card_name_ten_of_cups;
            case 'card_name_page_of_cups': return AppLocalizations.of(context)!.card_name_page_of_cups;
            case 'card_name_knight_of_cups': return AppLocalizations.of(context)!.card_name_knight_of_cups;
            case 'card_name_queen_of_cups': return AppLocalizations.of(context)!.card_name_queen_of_cups;
            case 'card_name_king_of_cups': return AppLocalizations.of(context)!.card_name_king_of_cups;
            case 'card_name_ace_of_swords': return AppLocalizations.of(context)!.card_name_ace_of_swords;
            case 'card_name_two_of_swords': return AppLocalizations.of(context)!.card_name_two_of_swords;
            case 'card_name_three_of_swords': return AppLocalizations.of(context)!.card_name_three_of_swords;
            case 'card_name_four_of_swords': return AppLocalizations.of(context)!.card_name_four_of_swords;
            case 'card_name_five_of_swords': return AppLocalizations.of(context)!.card_name_five_of_swords;
            case 'card_name_six_of_swords': return AppLocalizations.of(context)!.card_name_six_of_swords;
            case 'card_name_seven_of_swords': return AppLocalizations.of(context)!.card_name_seven_of_swords;
            case 'card_name_eight_of_swords': return AppLocalizations.of(context)!.card_name_eight_of_swords;
            case 'card_name_nine_of_swords': return AppLocalizations.of(context)!.card_name_nine_of_swords;
            case 'card_name_ten_of_swords': return AppLocalizations.of(context)!.card_name_ten_of_swords;
            case 'card_name_page_of_swords': return AppLocalizations.of(context)!.card_name_page_of_swords;
            case 'card_name_knight_of_swords': return AppLocalizations.of(context)!.card_name_knight_of_swords;
            case 'card_name_queen_of_swords': return AppLocalizations.of(context)!.card_name_queen_of_swords;
            case 'card_name_king_of_swords': return AppLocalizations.of(context)!.card_name_king_of_swords;
            case 'card_name_ace_of_pentacles': return AppLocalizations.of(context)!.card_name_ace_of_pentacles;
            case 'card_name_two_of_pentacles': return AppLocalizations.of(context)!.card_name_two_of_pentacles;
            case 'card_name_three_of_pentacles': return AppLocalizations.of(context)!.card_name_three_of_pentacles;
            case 'card_name_four_of_pentacles': return AppLocalizations.of(context)!.card_name_four_of_pentacles;
            case 'card_name_five_of_pentacles': return AppLocalizations.of(context)!.card_name_five_of_pentacles;
            case 'card_name_six_of_pentacles': return AppLocalizations.of(context)!.card_name_six_of_pentacles;
            case 'card_name_seven_of_pentacles': return AppLocalizations.of(context)!.card_name_seven_of_pentacles;
            case 'card_name_eight_of_pentacles': return AppLocalizations.of(context)!.card_name_eight_of_pentacles;
            case 'card_name_nine_of_pentacles': return AppLocalizations.of(context)!.card_name_nine_of_pentacles;
            case 'card_name_ten_of_pentacles': return AppLocalizations.of(context)!.card_name_ten_of_pentacles;
            case 'card_name_page_of_pentacles': return AppLocalizations.of(context)!.card_name_page_of_pentacles;
            case 'card_name_knight_of_pentacles': return AppLocalizations.of(context)!.card_name_knight_of_pentacles;
            case 'card_name_queen_of_pentacles': return AppLocalizations.of(context)!.card_name_queen_of_pentacles;
            case 'card_name_king_of_pentacles': return AppLocalizations.of(context)!.card_name_king_of_pentacles;
            default: return cardName;
          }
        }
        return cardName;
      }

      List<String?> safeFlippedCards = List.generate(5, (i) {
        final card = _flippedCards[i];
        if (card != null && CardTranslations.cards.contains(card)) {
          return card;
        } else {
          return '';
        }
      });

      // Логируем переведённые карты
      debugPrint('[FiveCardPrompt] translated cards:');
      debugPrint('[FiveCardPrompt] pastCard: "'+getCardTranslation(safeFlippedCards[0])+'"');
      debugPrint('[FiveCardPrompt] presentCard: "'+getCardTranslation(safeFlippedCards[1])+'"');
      debugPrint('[FiveCardPrompt] hiddenCard: "'+getCardTranslation(safeFlippedCards[2])+'"');
      debugPrint('[FiveCardPrompt] adviceCard: "'+getCardTranslation(safeFlippedCards[3])+'"');
      debugPrint('[FiveCardPrompt] outcomeCard: "'+getCardTranslation(safeFlippedCards[4])+'"');

      String prompt = AppLocalizations.of(context)!.five_cards_screen_prompt(
        getCardTranslation(safeFlippedCards[3]), // adviceCard
        getCardTranslation(safeFlippedCards[2]), // hiddenCard
        getCardTranslation(safeFlippedCards[4]), // outcomeCard
        getCardTranslation(safeFlippedCards[0]), // pastCard
        getCardTranslation(safeFlippedCards[1]), // presentCard
        actualUserName,                          // userName
        _userQuestion,                           // userQuestion
      );

      debugPrint('[FiveCardPrompt] PROMPT RESULT:\n' + prompt);

      final promptEndTime = DateTime.now();
      debugPrint('[FiveCard] Prompt formation completed at ${promptEndTime.toIso8601String()}, duration: ${promptEndTime.difference(promptStartTime).inMilliseconds}ms');

      final openaiStartTime = DateTime.now();
      debugPrint('[FiveCard] Starting OpenAI request at ${openaiStartTime.toIso8601String()}');
      
      final response = await TranslationService().getTranslatedText(
        text: prompt,
        targetLanguageCode: _languageCode,
        isTarotReading: true,
      );
      
      final openaiEndTime = DateTime.now();
      debugPrint('[FiveCard] OpenAI response received at ${openaiEndTime.toIso8601String()}, duration: ${openaiEndTime.difference(openaiStartTime).inMilliseconds}ms');
      
      if (mounted) {
        setState(() {
          _openAiAnswer = response;
          _showAdAndNewSpread = true;
          _isLoadingAnswer = false;
        });
        final totalTime = DateTime.now().difference(startTime);
        debugPrint('[FiveCard] Answer ready, loading indicator hidden. Total time: ${totalTime.inMilliseconds}ms');
      }
    } catch (e) {
      final errorTime = DateTime.now();
      debugPrint('[FiveCard] Error occurred at ${errorTime.toIso8601String()}: $e');
      
      if (mounted) {
        setState(() {
          if (e.toString().contains('NO_INTERNET')) {
            _openAiAnswer = AppLocalizations.of(context)!.no_internet_error;
          } else {
            _openAiAnswer = AppLocalizations.of(context)!.five_cards_screen_error_getting_value;
          }
          _showAdAndNewSpread = true;
          _isLoadingAnswer = false;
        });
        debugPrint('[FiveCard] Error occurred, loading indicator hidden');
      }
    }
  }

  @override
  void initState() {
    super.initState();
    _loadLanguage();
    _loadUserName();
    // Добавляем слушатель изменений языка
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

  void _onLanguageChanged() {
    // Принудительно обновляем UI при смене языка
    if (mounted) {
      setState(() {});
    }
  }

  Future<void> _loadLanguage() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _languageCode = prefs.getString('language_code') ?? 'en';
    });
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
        text: AppLocalizations.of(context)!.five_cards_screen_request_accepted,
        isUser: false,
      ));
      // Случайно выбираем 5 карт
      List<String> available = List.from(_allCardNames);
      available.shuffle(_random);
      _flippedCards = available.take(5).toList();
      _cardFlipped = [false, false, false, false, false];
      _showCards = true;
      _isLoading = false;
    });
  }

  void _handleSeeMeaning() async {
    final startTime = DateTime.now();
    debugPrint('[FiveCard] _handleSeeMeaning: starting at ${startTime.toIso8601String()}');
    
    // Скрываем кнопку сразу
    setState(() {
      _showSeeMeaningButton = false;
    });

    // Запускаем загрузку описания карт параллельно с показом рекламы
    _loadCardsDescription();

    // Показываем рекламу параллельно
    try {
      final adStartTime = DateTime.now();
      debugPrint('[FiveCard] Starting ad loading at ${adStartTime.toIso8601String()}');
      
      bool isLoaded = await Appodeal.isLoaded(AppodealAdType.Interstitial);
      if (isLoaded) {
        await Appodeal.show(AppodealAdType.Interstitial);
        await Appodeal.cache(AppodealAdType.Interstitial);
        final adEndTime = DateTime.now();
        debugPrint('[FiveCard] Appodeal Interstitial shown successfully at ${adEndTime.toIso8601String()}, duration: ${adEndTime.difference(adStartTime).inMilliseconds}ms');
      } else {
        await Appodeal.cache(AppodealAdType.Interstitial);
        final adEndTime = DateTime.now();
        debugPrint('[FiveCard] Appodeal Interstitial cached for next time at ${adEndTime.toIso8601String()}, duration: ${adEndTime.difference(adStartTime).inMilliseconds}ms');
      }
    } catch (e, st) {
      final adEndTime = DateTime.now();
      debugPrint('[FiveCard] ERROR showing Appodeal Interstitial at ${adEndTime.toIso8601String()}: $e\n$st');
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
                loc.five_cards_spread_screen_what_is_five_cards_dialog,
                style: const TextStyle(
                  color: Color(0xFFDBC195),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              Text(
                loc.five_cards_spread_screen_five_cards_explanation_dialog,
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
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    loc.five_cards_spread_screen_understand_button,
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

  Widget _buildFiveCards() {
    final allFlipped = _cardFlipped.every((f) => f);
    
    // Логируем для отладки
    debugPrint('[FiveCardUI] Building five cards UI');
    debugPrint('[FiveCardUI] _flippedCards: $_flippedCards');
    debugPrint('[FiveCardUI] _userName: $_userName');
    
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
            double cardWidth = ((constraints.maxWidth - totalSpacing) / 5).clamp(36.0, 90.0);
            double cardHeight = cardWidth * 1.55;
            return Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: List.generate(5, (index) {
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
          AppLocalizations.of(context)!.fiveCardsInSpread,
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
                          if (_showCards) _buildFiveCards(),
                                                      if (_isLoadingAnswer) ...[
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
                                        style: const TextStyle(color: Colors.white, fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
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
                                    AppLocalizations.of(context)!.makeNewSpread,
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
                                    AppLocalizations.of(context)!.appUsesAIForEntertainmentOnlyWeDoNotTakeResponsibilityForDecisionsYouMake,
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
                        elevation: 6,
                        shadowColor: Colors.black.withOpacity(0.18),
                        minimumSize: const Size(54, 54),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                        padding: EdgeInsets.zero,
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
    );
  }

  @override
  void dispose() {
    // Удаляем слушатель при уничтожении виджета
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