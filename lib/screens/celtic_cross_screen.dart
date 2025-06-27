import 'package:flutter/material.dart';
import 'dart:math';
import 'package:tarot_ai/utils/card_translations.dart';
import 'package:tarot_ai/services/translation_service.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tarot_ai/services/language_service.dart';
import 'package:tarot_ai/utils/font_utils.dart';
import 'package:tarot_ai/services/user_service.dart';

class CelticCrossScreen extends StatefulWidget {
  const CelticCrossScreen({Key? key}) : super(key: key);

  @override
  State<CelticCrossScreen> createState() => _CelticCrossScreenState();
}

class _CelticCrossScreenState extends State<CelticCrossScreen> {
  final List<String> _allCardNames = CardTranslations.cards;
  final Random _random = Random();

  final TextEditingController _questionController = TextEditingController();
  bool _isLoading = false;
  String _languageCode = 'en';
  final List<String> _suggestedQuestions = [
    'What is the main challenge I face now?',
    'What should I focus on in the near future?',
    'What is hidden from me?',
  ];

  List<String?> _flippedCards = List.filled(10, null);
  List<bool> _cardFlipped = List.filled(10, false);
  List<GlobalKey<FlipCardState>> _cardKeys = List.generate(10, (_) => GlobalKey<FlipCardState>());
  bool _showCards = false;
  bool _showSeeMeaningButton = true;
  String? _openAiAnswer;

  // Диалоговые сообщения
  List<_ChatMessage> _messages = [
    _ChatMessage(
      text: 'Good day, please write your question below:',
      isUser: false,
    ),
  ];
  bool _questionSent = false;

  String _userName = '';
  Future<void> _loadUserName() async {
    await UserService().loadUserName();
    setState(() {
      _userName = UserService().userName;
    });
  }

  @override
  void initState() {
    super.initState();
    _loadLanguage();
    _loadUserName();
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
      _messages.add(_ChatMessage(text: userText, isUser: true));
      _questionController.clear();
      _questionSent = true;
    });
    await Future.delayed(const Duration(milliseconds: 300));
    setState(() {
      _messages.add(_ChatMessage(
        text: _languageCode == 'ru'
            ? 'Ваш запрос принят. Пожалуйста, откройте карты'
            : _languageCode == 'nl'
                ? 'Uw verzoek is ontvangen. Open de kaarten alstublieft'
                : 'Your request has been received. Please open the cards',
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
    setState(() {
      _showSeeMeaningButton = false;
    });
    // Формируем промт для OpenAI
    final cards = _flippedCards.whereType<String>().toList();
    String prompt = '';
    if (_languageCode == 'ru') {
      prompt = 'Сделай для ${_userName.isNotEmpty ? _userName : 'пользователя'}. расклад Кельтский крест на эти 10 карт: ${cards.join(', ')}';
    } else if (_languageCode == 'nl') {
      prompt = 'Maak voor ${_userName.isNotEmpty ? _userName : 'de gebruiker'} een Keltisch Kruis legging op deze tien kaarten: ${cards.join(', ')}';
    } else {
      prompt = 'Make a Celtic Cross tarot reading for ${_userName.isNotEmpty ? _userName : 'the user'} on these ten cards: ${cards.join(', ')}';
    }

    try {
      final response = await TranslationService().getTranslatedText(
        text: prompt,
        targetLanguageCode: _languageCode,
        isTarotReading: true,
      );
      setState(() {
        _openAiAnswer = response;
      });
    } catch (e) {
      setState(() {
        _openAiAnswer = _languageCode == 'ru'
            ? 'Ошибка при получении значения расклада. Попробуйте ещё раз.'
            : _languageCode == 'nl'
                ? 'Fout bij het ophalen van de betekenis. Probeer het opnieuw.'
                : 'Error getting the spread meaning. Please try again.';
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
                          child: _buildFlipCard(0, cardWidth, cardHeight), // 1. Сигнификатор
                        ),
                        Positioned(
                          left: cardWidth * 1.5,
                          top: cardHeight * 1.2,
                          child: Transform.rotate(
                            angle: -1.5708, // -90 градусов
                            child: _buildFlipCard(1, cardWidth, cardHeight), // 2. Наложение
                          ),
                        ),
                        Positioned(
                          left: cardWidth * 1.5,
                          top: cardHeight * 2.3,
                          child: _buildFlipCard(2, cardWidth, cardHeight), // 3. Основа (внизу)
                        ),
                        Positioned(
                          left: cardWidth * 0.1,
                          top: cardHeight * 1.2,
                          child: _buildFlipCard(3, cardWidth, cardHeight), // 4. Прошлое (слева)
                        ),
                        Positioned(
                          left: cardWidth * 1.5,
                          top: cardHeight * 0.1,
                          child: _buildFlipCard(4, cardWidth, cardHeight), // 5. Цели и идеалы (верх)
                        ),
                        Positioned(
                          left: cardWidth * 3.0,
                          top: cardHeight * 1.2,
                          child: _buildFlipCard(5, cardWidth, cardHeight), // 6. Ближайшее будущее (справа)
                        ),
                        Positioned(
                          left: cardWidth * 4.5,
                          top: cardHeight * 0.1,
                          child: _buildFlipCard(6, cardWidth, cardHeight), // 7. Вопрошающий
                        ),
                        Positioned(
                          left: cardWidth * 4.5,
                          top: cardHeight * 0.1 + cardHeight * 1.05,
                          child: _buildFlipCard(7, cardWidth, cardHeight), // 8. Окружение
                        ),
                        Positioned(
                          left: cardWidth * 4.5,
                          top: cardHeight * 0.1 + cardHeight * 2.1,
                          child: _buildFlipCard(8, cardWidth, cardHeight), // 9. Надежды и опасения
                        ),
                        Positioned(
                          left: cardWidth * 4.5,
                          top: cardHeight * 0.1 + cardHeight * 3.15,
                          child: _buildFlipCard(9, cardWidth, cardHeight), // 10. Итог
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
                            borderRadius: BorderRadius.circular(30),
                          ),
                          elevation: 0,
                        ),
                        child: Text(
                          _languageCode == 'ru'
                              ? 'Узнать значение'
                              : _languageCode == 'nl'
                                  ? 'Bekijk betekenis'
                                  : 'See meaning',
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
                      return const Center(child: Text('Unable to load card', style: TextStyle(color: Colors.red)));
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
    if (_questionSent) return const SizedBox.shrink();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ..._suggestedQuestions.map((q) => _buildSuggestionText(q)),
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
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Что такое Кельтский крест?',
                style: TextStyle(
                  color: Color(0xFFDBC195),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              const Text(
                'Кельтский крест — один из самых глубоких и популярных раскладов. Он раскрывает все аспекты ситуации: прошлое, настоящее, будущее, скрытые влияния, страхи, надежды и итог.',
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
          _languageCode == 'ru'
              ? 'Кельтский крест'
              : _languageCode == 'nl'
                  ? 'Keltisch Kruis Legging'
                  : 'Celtic Cross Spread',
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
                          if (_showCards) _buildCelticCrossCards(),
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
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                'assets/images/banner_ad.png',
                                fit: BoxFit.fitWidth,
                                width: double.infinity,
                                errorBuilder: (context, error, stackTrace) {
                                  return const Center(
                                    child: Icon(Icons.broken_image, color: Colors.white70, size: 50),
                                  );
                                },
                              ),
                            ),
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
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    elevation: 0,
                                  ),
                                  child: Text(
                                    _languageCode == 'ru'
                                        ? 'Сделать новый расклад'
                                        : _languageCode == 'nl'
                                            ? 'Nieuwe legging maken'
                                            : 'New spread',
                                    style: const TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ],
                          const SizedBox(height: 18),
                          _buildSuggestedQuestions(),
                          const SizedBox(height: 24),
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
                          hintText: _languageCode == 'ru'
                              ? 'Введите ваш вопрос...'
                              : _languageCode == 'nl'
                                  ? 'Voer uw vraag in...'
                                  : 'Enter your question...',
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
                          borderRadius: BorderRadius.circular(30),
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