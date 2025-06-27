import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'dart:math';
import 'package:tarot_ai/utils/card_translations.dart';
import 'package:tarot_ai/services/translation_service.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tarot_ai/services/user_service.dart';
import 'package:tarot_ai/l10n/app_localizations.dart';

class MonthlyForecastSpreadScreen extends StatefulWidget {
  const MonthlyForecastSpreadScreen({Key? key}) : super(key: key);

  @override
  State<MonthlyForecastSpreadScreen> createState() => _MonthlyForecastSpreadScreenState();
}

class _MonthlyForecastSpreadScreenState extends State<MonthlyForecastSpreadScreen> {
  final TextEditingController _questionController = TextEditingController();
  bool _isLoading = false;
  String _languageCode = 'en';
  final List<String> _suggestedQuestions = [
    'What will be the key themes of the month?',
    'What should I pay attention to this month?',
    'What opportunities and challenges await me?',
  ];

  final List<String> _allCardNames = CardTranslations.cards;
  final Random _random = Random();
  List<String?> _flippedCards = List.filled(12, null);
  List<bool> _cardFlipped = List.filled(12, false);
  List<GlobalKey<FlipCardState>> _cardKeys = List.generate(12, (_) => GlobalKey<FlipCardState>());
  bool _showCards = false;
  bool _showSeeMeaningButton = true;
  bool _showAdAndNewSpread = false;

  List<_ChatMessage> _messages = [
    _ChatMessage(
      text: 'Good day, please write your question below:',
      isUser: false,
    ),
  ];
  bool _questionSent = false;

  String _userName = '';
  String? _openAiAnswer;
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
      List<String> available = List.from(_allCardNames);
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
    final cards = _flippedCards.whereType<String>().toList();
    String prompt = '';
    if (_languageCode == 'ru') {
      prompt = 'Сделай для  ${_userName.isNotEmpty ? _userName : 'пользователя'}. месячный прогноз на эти 12 карт: ${cards.join(', ')}';
    } else if (_languageCode == 'nl') {
      prompt = 'Maak voor ${_userName.isNotEmpty ? _userName : 'de gebruiker'} een maandprognose op deze twaalf kaarten: ${cards.join(', ')}';
    } else {
      prompt = 'Make a monthly tarot forecast for ${_userName.isNotEmpty ? _userName : 'the user'} on these twelve cards: ${cards.join(', ')}';
    }

    try {
      final response = await TranslationService().getTranslatedText(
        text: prompt,
        targetLanguageCode: _languageCode,
        isTarotReading: true,
      );
      setState(() {
        _openAiAnswer = response;
        _showAdAndNewSpread = true;
      });
    } catch (e) {
      setState(() {
        _openAiAnswer = _languageCode == 'ru'
            ? 'Ошибка при получении значения расклада. Попробуйте ещё раз.'
            : _languageCode == 'nl'
                ? 'Fout bij het ophalen van de betekenis. Probeer het opnieuw.'
                : 'Error getting the spread meaning. Please try again.';
        _showAdAndNewSpread = true;
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
                              borderRadius: BorderRadius.circular(22),
                            ),
                            elevation: 0,
                          ),
                          child: Text(
                            _languageCode == 'ru'
                                ? 'Узнать ответ'
                                : _languageCode == 'nl'
                                    ? 'Antwoord krijgen'
                                    : 'Get Answer',
                            style: const TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
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
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: Row(
          children: [
            const Icon(Icons.info_outline, color: Color(0xFFDBC195)),
            SizedBox(width: 8),
            Expanded(
              child: Text(
                _languageCode == 'ru'
                    ? 'О раскладе'
                    : _languageCode == 'nl'
                        ? 'Over de legging'
                        : 'About the Spread',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        content: Text(
          _languageCode == 'ru'
              ? 'Месячный прогноз — это расклад на 12 карт, каждая из которых символизирует определённый аспект месяца. Задайте вопрос и откройте карты, чтобы получить подробный прогноз.'
              : _languageCode == 'nl'
                  ? 'De maandprognose is een legging van 12 kaarten, elk vertegenwoordigt een aspect van de maand. Stel een vraag en open de kaarten voor een gedetailleerde voorspelling.'
                  : 'The monthly forecast is a 12-card spread, each representing an aspect of the month. Ask your question and open the cards for a detailed forecast.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text(
              _languageCode == 'ru'
                  ? 'Понятно'
                  : _languageCode == 'nl'
                      ? 'Begrepen'
                      : 'Got it',
              style: const TextStyle(color: Color(0xFFDBC195)),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
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
            _languageCode == 'ru'
                ? 'Месячный прогноз'
                : _languageCode == 'nl'
                    ? 'Maandprognose'
                    : 'Monthly Forecast',
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
      ),
    );
  }

  @override
  void dispose() {
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