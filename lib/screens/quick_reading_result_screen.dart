import 'package:flutter/material.dart';
import 'package:tarot_ai/services/translation_service.dart';
import 'package:tarot_ai/utils/card_translations.dart';
import 'dart:math';

class QuickReadingResultScreen extends StatefulWidget {
  final String selectedCardName;
  final String languageCode;
  final String imagePath;

  const QuickReadingResultScreen({
    super.key,
    required this.selectedCardName,
    required this.languageCode,
    required this.imagePath,
  });

  @override
  State<QuickReadingResultScreen> createState() => _QuickReadingResultScreenState();
}

class _QuickReadingResultScreenState extends State<QuickReadingResultScreen> {
  final TranslationService _translationService = TranslationService();
  String _aiResponse = 'Генерация ответа...';
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _generateReading();
  }

  Future<void> _generateReading() async {
    if (!mounted) return;
    setState(() {
      _isLoading = true;
    });

    final String prompt = '''
Generate a quick Tarot "Yes/No" reading for the card "${widget.selectedCardName}".
Language: ${widget.languageCode}.
Response MUST BE STRICTLY IN FORMAT, without extra words, without brackets and without hints — just real translations. Ensure each paragraph of the description is separated by a blank line:

Your card: <card name in ${widget.languageCode}>
Answer: <Yes or No in ${widget.languageCode}>

Description:
😀 <first paragraph — mystical introduction, 3-4 sentences long>

🌙 <second paragraph — esoteric context, 3-4 sentences long>

✨ <third paragraph — final insight and advice, 3-4 sentences long>
''';

    try {
      final String generatedText = await _translationService.getTranslatedText(
        text: prompt,
        targetLanguageCode: widget.languageCode,
        isTarotReading: true, // Mark this as a tarot reading request
      );
      if (!mounted) return;
      setState(() {
        _aiResponse = generatedText;
        _isLoading = false;
      });
    } catch (e) {
      if (!mounted) return;
      setState(() {
        _aiResponse = 'Ошибка при генерации ответа: ${e.toString()}';
        _isLoading = false;
      });
    }
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

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final cardWidth = screenSize.width * 0.5;
    final cardHeight = cardWidth * (320 / 220);

    // Split AI response into lines for 'Ваша карта', 'Ответ', 'Описание'
    final List<String> responseLines = _aiResponse.split('\n');
    String cardTitle = '';
    String answer = '';
    String description = '';

    if (!_isLoading && responseLines.isNotEmpty) {
      // Find "Your card:" line
      int cardLineIndex = responseLines.indexWhere((line) => line.startsWith('Your card:'));
      if (cardLineIndex != -1) {
        cardTitle = responseLines[cardLineIndex];
      }

      // Find "Answer:" line
      int answerLineIndex = responseLines.indexWhere((line) => line.startsWith('Answer:'));
      if (answerLineIndex != -1) {
        answer = responseLines[answerLineIndex];
      }

      // Remaining lines form the description
      List<String> descLines = [];
      for (int i = 0; i < responseLines.length; i++) {
        if (i != cardLineIndex && i != answerLineIndex) {
          descLines.add(responseLines[i]);
        }
      }
      description = descLines.join('\n').trim();
      // No need to trim "Description:" prefix as we expect the AI to format it well with blank lines
    }

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/main-2.jpg',
              fit: BoxFit.cover,
            ),
          ),
          SingleChildScrollView(
            padding: EdgeInsets.zero,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: MediaQuery.of(context).padding.top + 16),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back, color: Colors.white),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                    Expanded(
                      child: Text(
                        'Быстрый расклад',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
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
                const SizedBox(height: 12),
                Center(
                  child: SizedBox(
                    width: cardWidth,
                    height: cardHeight,
                    child: Image.asset(
                      widget.imagePath,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.15),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: _isLoading
                      ? const Center(
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(Color(0xFFDBC195)),
                          ),
                        )
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (cardTitle.isNotEmpty)
                              Text(cardTitle, style: const TextStyle(color: Colors.white, fontSize: 18)),
                            if (answer.isNotEmpty)
                              Text(answer, style: const TextStyle(color: Colors.white, fontSize: 16)),
                            if (description.isNotEmpty)
                              Padding(
                                padding: const EdgeInsets.only(top: 12.0),
                                child: Text(
                                  description,
                                  style: const TextStyle(color: Colors.white, fontSize: 16),
                                ),
                              ),
                          ],
                        ),
                ),
                const SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).popUntil((route) => route.isFirst);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      elevation: 6,
                      shadowColor: Colors.black.withOpacity(0.18),
                      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                    ),
                    child: const Text(
                      'Новый расклад',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).padding.bottom + 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
} 