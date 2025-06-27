import 'package:flutter/material.dart';
import 'dart:math';
import 'package:tarot_ai/utils/card_translations.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tarot_ai/services/translation_service.dart';
import 'package:tarot_ai/screens/quick_reading_result_screen.dart';
import 'package:tarot_ai/services/language_service.dart';
import 'package:tarot_ai/utils/font_utils.dart';
import 'package:tarot_ai/l10n/app_localizations.dart';

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
  String? _languageCode;

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

  String _getCardImagePath(String cardName) {
    final fileName = CardTranslations.cardToFileMap[cardName];
    if (fileName == null) {
      print('ERROR: No image file found for card name: $cardName');
      return ''; // Return an empty string or a placeholder if the file is not found
    }
    return 'assets/cards/$fileName';
  }

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500), // Длительность анимации движения
    );
    _loadLanguage();
  }

  void _loadLanguage() {
    final langCode = LanguageService().currentLanguageCode;
    setState(() {
      _languageCode = langCode;
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

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
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
                            style: headingStyleForLang(_languageCode ?? 'en-US', 22, color: Colors.white),
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
                                  'Выберите карту',
                                  style: headingStyleForLang(_languageCode ?? 'ru', 18, color: Colors.white),
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
                                            onPressed: () {
                                              final cardName = selectedCards[_tappedCardIndex!];
                                              if (cardName != null && _languageCode != null) {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (_) => QuickReadingResultScreen(
                                                      selectedCardName: cardName,
                                                      languageCode: _languageCode!,
                                                      imagePath: _getCardImagePath(cardName),
                                                    ),
                                                  ),
                                                );
                                              }
                                            },
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.white,
                                              elevation: 6,
                                              shadowColor: Colors.black.withOpacity(0.18),
                                              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                                            ),
                                            child: const Text(
                                              'Узнать ответ',
                                              style: TextStyle(
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
              const Text(
                'Что такое быстрый расклад?',
                style: TextStyle(
                  color: Color(0xFFDBC195),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              const Text(
                'Быстрый расклад — это однокарточный ответ на ваш вопрос. Просто выберите карту, чтобы получить краткое и точное предсказание.',
                style: TextStyle(color: Colors.white, fontSize: 16),
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
                  child: const Text(
                    'Понятно',
                    style: TextStyle(
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