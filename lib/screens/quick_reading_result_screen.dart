import 'package:flutter/material.dart';
import 'package:tarot_ai/services/translation_service.dart';
import 'package:tarot_ai/utils/card_translations.dart';
import 'dart:math';
import '../widgets/ad_promo_block.dart';
import '../l10n/app_localizations.dart';
import 'package:tarot_ai/services/user_service.dart';

class QuickReadingResultScreen extends StatefulWidget {
  final String selectedCardName;
  final String languageCode;
  final String imagePath;
  final String? preGeneratedAnswer;

  const QuickReadingResultScreen({
    super.key,
    required this.selectedCardName,
    required this.languageCode,
    required this.imagePath,
    this.preGeneratedAnswer,
  });

  @override
  State<QuickReadingResultScreen> createState() => _QuickReadingResultScreenState();
}

class _QuickReadingResultScreenState extends State<QuickReadingResultScreen> {
  final TranslationService _translationService = TranslationService();
  String _aiResponse = '';
  bool _isLoading = true;
  bool _initialized = false;
  bool _didCallGenerate = false;

  @override
  void initState() {
    super.initState();
    // Загружаем имя пользователя
    UserService().loadUserName();
    // Не вызываем _generateResponse() здесь!
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_didCallGenerate) {
      _didCallGenerate = true;
      debugPrint('[QuickReadingResultScreen] didChangeDependencies: checking preGeneratedAnswer');
      
      // Если у нас есть предварительно сгенерированный ответ, используем его
      if (widget.preGeneratedAnswer != null && widget.preGeneratedAnswer!.isNotEmpty) {
        debugPrint('[QuickReadingResultScreen] Using preGeneratedAnswer: ${widget.preGeneratedAnswer}');
        setState(() {
          _aiResponse = widget.preGeneratedAnswer!;
          _isLoading = false;
        });
      } else {
        debugPrint('[QuickReadingResultScreen] No preGeneratedAnswer, calling _generateResponse');
        _generateResponse();
      }
    }
  }

  @override
  Future<void> _generateResponse() async {
    debugPrint('[QuickReadingResultScreen] _generateResponse called');
    setState(() {
      _isLoading = true;
    });

    try {
      final l10n = AppLocalizations.of(context);
      debugPrint('[QuickReadingResultScreen] l10n: $l10n');
      if (l10n == null) {
        debugPrint('[QuickReadingResultScreen] ERROR: l10n is null');
        setState(() {
          _aiResponse = 'Ошибка: l10n is null';
          _isLoading = false;
        });
        return;
      }
      final String cardNameRu = CardTranslations.getTranslation(widget.selectedCardName, l10n);
      
      // Убеждаемся, что имя пользователя загружено
      await UserService().loadUserName();
      final String userName = UserService().userName;
      
      final String prompt = l10n.quick_reading_result_screen_prompt(
        cardNameRu,
        userName,
      );
      debugPrint('[QuickReadingResultScreen] PROMPT TO AI: ' + prompt);
      if (prompt.isEmpty) {
        debugPrint('[QuickReadingResultScreen] ERROR: prompt is empty');
        setState(() {
          _aiResponse = 'Ошибка: prompt is empty';
          _isLoading = false;
        });
        return;
      }
      debugPrint('[QuickReadingResultScreen] Calling getTranslatedText...');
      final String generatedText = await _translationService.getTranslatedText(
        text: prompt,
        targetLanguageCode: widget.languageCode,
        isTarotReading: true,
      );
      debugPrint('[QuickReadingResultScreen] OpenAI response: $generatedText');
      setState(() {
        _aiResponse = generatedText;
        _isLoading = false;
      });
    } catch (e, stack) {
      debugPrint('[QuickReadingResultScreen] ERROR: $e');
      debugPrint('[QuickReadingResultScreen] STACK: $stack');
      setState(() {
        if (e.toString().contains('NO_INTERNET')) {
          _aiResponse = AppLocalizations.of(context)!.no_internet_error;
        } else {
          _aiResponse = 'Ошибка: $e';
        }
        _isLoading = false;
      });
    }
  }

  void _showInfoDialog() {
    final l10n = AppLocalizations.of(context)!;
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
                l10n.quick_reading_result_screen_what_is_quick_spread,
                style: const TextStyle(
                  color: Color(0xFFDBC195),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              Text(
                l10n.quick_reading_result_screen_quick_spread_explanation,
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
                    l10n.quick_reading_result_screen_understand_button,
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

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
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
        // Заменяем английское имя на русский перевод
        final cardNameRu = CardTranslations.getTranslation(widget.selectedCardName, l10n);
        cardTitle = 'Ваша карта: $cardNameRu';
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
                        l10n.quick_reading_result_screen_quick_spread_title,
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
                const SizedBox(height: 18),
                Center(
                  child: Container(
                    width: 200,
                    height: 44,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.35),
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(color: Colors.white.withOpacity(0.85), width: 1.2),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white.withOpacity(0.08),
                          blurRadius: 12,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      CardTranslations.getTranslation(widget.selectedCardName, l10n),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Center(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 420),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 0),
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
                                  if (answer.isEmpty && description.isEmpty && !_isLoading && _aiResponse.isNotEmpty)
                                    Text(
                                      _aiResponse,
                                      style: const TextStyle(color: Colors.white, fontSize: 16),
                                      textAlign: TextAlign.center,
                                    ),
                                ],
                              ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                if (!_isLoading && _aiResponse.isNotEmpty) ...[
                  Center(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: 420),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: AdPromoBlock(),
                      ),
                    ),
                  ),
                  const SizedBox(height: 18),
                ],
                Center(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 420),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).popUntil((route) => route.isFirst);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            elevation: 6,
                            shadowColor: Colors.black.withOpacity(0.18),
                            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
                          ),
                          child: Text(
                            l10n.quick_reading_result_screen_new_spread_button,
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                if (!_isLoading && _aiResponse.isNotEmpty)
                  Center(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: 420),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                        child: Text(
                          l10n.quick_reading_result_screen_disclaimer,
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
                SizedBox(height: MediaQuery.of(context).padding.bottom + 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
} 