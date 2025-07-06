import 'package:flutter/material.dart';
import 'dart:math';
import 'package:tarot_ai/utils/card_translations.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tarot_ai/services/translation_service.dart';
import 'package:tarot_ai/screens/quick_reading_result_screen.dart';
import 'package:tarot_ai/services/language_service.dart';
import 'package:tarot_ai/utils/font_utils.dart';
import 'package:tarot_ai/l10n/app_localizations.dart';
import 'package:tarot_ai/services/user_service.dart';
import 'package:stack_appodeal_flutter/stack_appodeal_flutter.dart';

class QuickReadingScreen extends StatefulWidget {
  const QuickReadingScreen({super.key});

  @override
  State<QuickReadingScreen> createState() => _QuickReadingScreenState();
}

class _QuickReadingScreenState extends State<QuickReadingScreen> with SingleTickerProviderStateMixin {
  Map<int, String?> selectedCards = {}; // Для хранения выбранных карт: номер карты -> путь к изображению
  Map<int, String?> selectedCardNames = {}; // Для хранения названий выбранных карт: номер карты -> название карты
  final List<GlobalKey<_FlipCardState>> _cardKeys = List.generate(5, (index) => GlobalKey<_FlipCardState>());
  int? _tappedCardIndex; // Индекс выбранной карты (1-5)
  Rect? _cardRect; // Позиция и размер выбранной карты в GridView
  bool _showGridView = true; // Для плавного исчезновения GridView
  bool _showAnswerButton = false; // Для показа кнопки 'Узнать ответ'

  late AnimationController _animationController; // Контроллер для анимации движения
  late Animation<Rect?> _cardAnimation; // Анимация для позиции карты

  final TranslationService translationService = TranslationService(); // Добавил обратно
  String _languageCode = 'en';

  final List<String> _allCardNames = CardTranslations.cards;
  final Random _random = Random();

  final Map<String, String> _numberWordToDigit = {
    'Ace': 'ace',
    'Two': '2',
    'Three': '3',
    'Four': '4',
    'Five': '5',
    'Six': '6',
    'Seven': '7',
    'Eight': '8',
    'Nine': '9',
    'Ten': '10',
  };

  int? _animatingCardIndex; // Индекс карты, которая анимируется
  bool _isAnimating = false;

  final TextEditingController _questionController = TextEditingController();
  bool _isLoading = false;
  String _userName = '';
  String _userQuestion = '';
  List<String?> _flippedCards = List.filled(3, null);
  List<bool> _cardFlipped = List.filled(3, false);
  bool _showCards = false;
  bool _showSeeMeaningButton = true;
  String? _openAiAnswer;

  // Диалоговые сообщения
  List<_ChatMessage> _messages = [];
  bool _questionSent = false;
  bool _isGeneratingAnswer = false;

  Future<void> _loadUserName() async {
    await UserService().loadUserName();
    setState(() {
      _userName = UserService().userName;
    });
  }

  String _getCardImagePath(String cardName) {
    final fileName = CardTranslations.cardToFileMap[cardName];
    if (fileName == null) {
      print(AppLocalizations.of(context)!.quick_reading_screen_error_no_image_file_found(cardName));
      return ''; // Return an empty string or a placeholder if the file is not found
    }
    return 'assets/cards/$fileName';
  }

  // Метод для загрузки ответа от OpenAI
  Future<void> _loadAnswer() async {
    if (_isGeneratingAnswer) return;
    
    final startTime = DateTime.now();
    debugPrint('[QuickReading] _loadAnswer: starting at ${startTime.toIso8601String()}');
    
    setState(() {
      _isGeneratingAnswer = true;
    });

    try {
      // Формируем промпт для OpenAI
      final promptStartTime = DateTime.now();
      debugPrint('[QuickReading] Starting prompt formation at ${promptStartTime.toIso8601String()}');
      
      final l10n = AppLocalizations.of(context)!;
      final cardName = selectedCards[_tappedCardIndex!];
      
      if (cardName == null) {
        debugPrint('[QuickReading] ERROR: cardName is null');
        setState(() {
          _openAiAnswer = 'Ошибка: cardName is null';
          _isGeneratingAnswer = false;
        });
        return;
      }
      
      // Получаем перевод названия карты
      final String cardNameRu = CardTranslations.getTranslation(cardName, l10n);
      
      // Убеждаемся, что имя пользователя загружено
      await UserService().loadUserName();
      final String userName = UserService().userName;
      
      final String prompt = l10n.quick_reading_result_screen_prompt(
        cardNameRu,
        userName,
      );
      
      if (prompt.isEmpty) {
        debugPrint('[QuickReading] ERROR: prompt is empty');
        setState(() {
          _openAiAnswer = 'Ошибка: prompt is empty';
          _isGeneratingAnswer = false;
        });
        return;
      }
      
      debugPrint('[QuickReading] Calling getTranslatedText...');
      final String generatedText = await translationService.getTranslatedText(
        text: prompt,
        targetLanguageCode: _languageCode,
        isTarotReading: true,
      );
      
      debugPrint('[QuickReading] OpenAI response: $generatedText');
      setState(() {
        _openAiAnswer = generatedText;
        _isGeneratingAnswer = false;
      });
    } catch (e, stack) {
      debugPrint('[QuickReading] ERROR: $e');
      debugPrint('[QuickReading] STACK: $stack');
      setState(() {
        if (e.toString().contains('NO_INTERNET')) {
          _openAiAnswer = AppLocalizations.of(context)!.no_internet_error;
        } else {
          _openAiAnswer = 'Ошибка: $e';
        }
        _isGeneratingAnswer = false;
      });
    }
  }

  // Функция для получения переведенных предложенных вопросов
  List<String> _getTranslatedSuggestedQuestions() {
    final l10n = AppLocalizations.of(context);
    if (l10n != null) {
      return [
        l10n.quick_reading_screen_suggested_questions_1,
        l10n.quick_reading_screen_suggested_questions_2,
        l10n.quick_reading_screen_suggested_questions_3,
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
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500), // Длительность анимации движения
    );
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

  @override
  void dispose() {
    // Удаляем слушатель при уничтожении виджета
    LanguageService().removeListener(_onLanguageChanged);
    _animationController.dispose();
    super.dispose();
  }

  void _onLanguageChanged() {
    // Принудительно обновляем UI при смене языка
    if (mounted) {
      setState(() {});
    }
  }

  Future<void> _loadLanguage() async {
    await LanguageService().loadLanguage();
    setState(() {
      _languageCode = LanguageService().currentLanguageCode;
    });
  }

  void _selectRandomCard(int index) {
    if (!selectedCards.containsKey(index)) {
      final String randomCardName = _allCardNames[_random.nextInt(_allCardNames.length)];
      setState(() {
        selectedCards[index] = randomCardName;
        selectedCardNames[index] = randomCardName; // Сохраняем имя карты
      });
    }
  }

  // Функция для получения переведенного названия карты
  String _getTranslatedCardName(String englishName) {
    final l10n = AppLocalizations.of(context);
    if (l10n != null) {
      return CardTranslations.getTranslatedCardName(englishName, l10n);
    }
    return englishName;
  }

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage('assets/images/main-2.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Stack(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 0, left: 8, right: 8, bottom: 12),
                    child: Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.arrow_back, color: Colors.white),
                          onPressed: () => Navigator.of(context).pop(),
                        ),
                        Expanded(
                          child: Text(
                            loc.quickReading,
                            style: headingStyleForLang(_languageCode, 22, color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 4.0),
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
                  ),
                  const SizedBox(height: 8),
                  Expanded(
                    child: Center(
                      child: _showGridView && !_isAnimating
                          ? Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // Верхний ряд (2 карты: 2, 4)
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const SizedBox(width: 30),
                                    FlipCard(
                                      key: _cardKeys[1],
                                      front: _buildCardPlaceholder(2, width: 90, height: 135),
                                      back: _buildCardImage(2, width: 90, height: 135),
                                      onFlip: () => _handleCardTap(2),
                                    ),
                                    const SizedBox(width: 40),
                                    FlipCard(
                                      key: _cardKeys[3],
                                      front: _buildCardPlaceholder(4, width: 90, height: 135),
                                      back: _buildCardImage(4, width: 90, height: 135),
                                      onFlip: () => _handleCardTap(4),
                                    ),
                                    const SizedBox(width: 30),
                                  ],
                                ),
                                const SizedBox(height: 18),
                                // Нижний ряд (3 карты: 1, 3, 5)
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FlipCard(
                                      key: _cardKeys[0],
                                      front: _buildCardPlaceholder(1, width: 90, height: 135),
                                      back: _buildCardImage(1, width: 90, height: 135),
                                      onFlip: () => _handleCardTap(1),
                                    ),
                                    const SizedBox(width: 18),
                                    FlipCard(
                                      key: _cardKeys[2],
                                      front: _buildCardPlaceholder(3, width: 90, height: 135),
                                      back: _buildCardImage(3, width: 90, height: 135),
                                      onFlip: () => _handleCardTap(3),
                                    ),
                                    const SizedBox(width: 18),
                                    FlipCard(
                                      key: _cardKeys[4],
                                      front: _buildCardPlaceholder(5, width: 90, height: 135),
                                      back: _buildCardImage(5, width: 90, height: 135),
                                      onFlip: () => _handleCardTap(5),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 32),
                                Text(
                                  loc.quick_reading_screen_select_card,
                                  style: headingStyleForLang(_languageCode, 18, color: Colors.white),
                                ),
                              ],
                            )
                          : _isAnimating && _animatingCardIndex != null
                              ? AnimatedBuilder(
                                  animation: _cardAnimation,
                                  builder: (context, child) {
                                    final rect = _cardAnimation.value;
                                    if (rect == null) return const SizedBox.shrink();
                                    return Positioned(
                                      left: rect.left,
                                      top: rect.top,
                                      width: rect.width,
                                      height: rect.height,
                                      child: FlipCard(
                                        key: _cardKeys[_animatingCardIndex! - 1],
                                        front: _buildCardPlaceholder(_animatingCardIndex!, width: rect.width, height: rect.height),
                                        back: _buildCardImage(_animatingCardIndex!, width: rect.width, height: rect.height),
                                        onFlip: () {},
                                      ),
                                    );
                                  },
                                )
                              : _tappedCardIndex != null
                                  ? Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          width: size.width * 0.5,
                                          height: size.width * 0.5 * (320 / 220),
                                          child: _buildCardImage(_tappedCardIndex!),
                                        ),
                                        const SizedBox(height: 24),
                                        if (_showAnswerButton)
                                          ElevatedButton(
                                            onPressed: () async {
                                              final cardName = selectedCards[_tappedCardIndex!];
                                              debugPrint('[QuickReadingScreen] onPressed: cardName=\x1b[36m$cardName\x1b[0m, languageCode=[36m[0m$_languageCode');
                                              
                                              // Запускаем загрузку ответа параллельно с показом рекламы
                                              _loadAnswer();

                                              // Показываем рекламу параллельно
                                              try {
                                                final adStartTime = DateTime.now();
                                                debugPrint('[QuickReading] Starting ad loading at ${adStartTime.toIso8601String()}');
                                                
                                                bool isLoaded = await Appodeal.isLoaded(AppodealAdType.Interstitial);
                                                if (isLoaded) {
                                                  await Appodeal.show(AppodealAdType.Interstitial);
                                                  await Appodeal.cache(AppodealAdType.Interstitial);
                                                  final adEndTime = DateTime.now();
                                                  debugPrint('[QuickReading] Appodeal Interstitial shown successfully at ${adEndTime.toIso8601String()}, duration: ${adEndTime.difference(adStartTime).inMilliseconds}ms');
                                                } else {
                                                  await Appodeal.cache(AppodealAdType.Interstitial);
                                                  final adEndTime = DateTime.now();
                                                  debugPrint('[QuickReading] Appodeal Interstitial cached for next time at ${adEndTime.toIso8601String()}, duration: ${adEndTime.difference(adStartTime).inMilliseconds}ms');
                                                }
                                              } catch (e, st) {
                                                final adEndTime = DateTime.now();
                                                debugPrint('[QuickReading] ERROR showing Appodeal Interstitial at ${adEndTime.toIso8601String()}: $e\n$st');
                                              }
                                              
                                              // Ждем немного чтобы ответ мог сгенерироваться, затем переходим
                                              await Future.delayed(const Duration(milliseconds: 500));
                                              
                                              // --- Переход к результату после рекламы ---
                                              if (cardName != null) {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (_) => QuickReadingResultScreen(
                                                      selectedCardName: cardName,
                                                      languageCode: _languageCode,
                                                      imagePath: _getCardImagePath(cardName),
                                                      preGeneratedAnswer: _openAiAnswer,
                                                    ),
                                                  ),
                                                );
                                                debugPrint('[QuickReadingScreen] Navigated to QuickReadingResultScreen with cardName=$cardName, languageCode=$_languageCode, preGeneratedAnswer: $_openAiAnswer');
                                              }
                                            },
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.white,
                                              elevation: 6,
                                              shadowColor: Colors.black.withOpacity(0.18),
                                              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
                                            ),
                                            child: Text(
                                              loc.quick_reading_screen_get_answer_button,
                                              style: const TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                              ),
                                            ),
                                          ),
                                      ],
                                    )
                                  : const SizedBox.shrink(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCardPlaceholder(int index, {double width = 54, double height = 80}) {
    return Image.asset(
      'assets/images/card_back.png',
      width: width,
      height: height,
      fit: BoxFit.contain,
    );
  }

  Widget _buildCardImage(int index, {double width = 54, double height = 80}) {
    final cardName = selectedCards[index];
    final imagePath = cardName != null
        ? _getCardImagePath(cardName)
        : '';
    print('DEBUG: _buildCardImage for index $index, cardName: $cardName, imagePath: $imagePath');
    return Image.asset(
      imagePath,
      width: width,
      height: height,
      fit: BoxFit.contain,
    );
  }

  Future<void> _handleCardTap(int index) async {
    if (_tappedCardIndex != null || _isAnimating) return;

    _selectRandomCard(index);
    setState(() {
      _animatingCardIndex = index;
      _isAnimating = true;
    });

    // Определение начального Rect выбранной карты
    final RenderBox renderBox = _cardKeys[index - 1].currentContext!.findRenderObject() as RenderBox;
    _cardRect = renderBox.localToGlobal(Offset.zero) & renderBox.size;

    // Определение конечного Rect (центр экрана)
    final screenSize = MediaQuery.of(context).size;
    final cardActualWidth = screenSize.width * 0.5;
    final cardActualHeight = cardActualWidth * (320 / 220);
    final targetRect = Rect.fromCenter(
      center: Offset(screenSize.width / 2, screenSize.height / 2),
      width: cardActualWidth,
      height: cardActualHeight,
    );

    _cardAnimation = RectTween(begin: _cardRect, end: targetRect).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );

    await _animationController.forward(from: 0.0);
    await _cardKeys[index - 1].currentState?.doFlip();

    setState(() {
      _tappedCardIndex = index;
      _showGridView = false;
      _isAnimating = false;
      _showAnswerButton = true;
      _animatingCardIndex = null;
    });
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
                loc.quick_reading_screen_what_is_quick_reading,
                style: const TextStyle(
                  color: Color(0xFFDBC195),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              Text(
                loc.quick_reading_screen_quick_reading_explanation,
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
                    loc.quick_reading_screen_understand_button,
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
}

class FlipCard extends StatefulWidget {
  final GlobalKey<_FlipCardState> key;
  final Widget front;
  final Widget back;
  final VoidCallback onFlip;

  const FlipCard({required this.key, required this.front, required this.back, required this.onFlip}) : super(key: key);

  @override
  State<FlipCard> createState() => _FlipCardState();
}

class _FlipCardState extends State<FlipCard> with SingleTickerProviderStateMixin {
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
    _animation = Tween<double>(begin: 0, end: pi).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> doFlip() async {
    if (_isFront) {
      await _controller.forward();
      setState(() {
        _isFront = false;
      });
    } else {
      await _controller.reverse();
      setState(() {
        _isFront = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (_isFront) {
          widget.onFlip();
        }
      },
      child: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          final rotation = _animation.value;
          final isUnder = (ValueNotifier<bool>(rotation >= pi / 2)).value;
          return Transform(
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.001)
              ..rotateY(rotation),
            alignment: Alignment.center,
            child: isUnder
                ? Transform(
                    transform: Matrix4.identity()..rotateY(pi), // Un-mirror the back side
                    alignment: Alignment.center,
                    child: widget.back,
                  )
                : widget.front,
          );
        },
      ),
    );
  }
}

class _ChatMessage {
  final String text;
  final bool isUser;
  _ChatMessage({required this.text, required this.isUser});
} 