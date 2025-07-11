import 'package:flutter/material.dart';
import 'package:tarot_ai/services/translation_service.dart';
import 'package:tarot_ai/utils/card_translations.dart';
import 'dart:math';
import '../widgets/ad_promo_block.dart';
import '../l10n/app_localizations.dart';
import 'package:tarot_ai/services/user_service.dart';
import 'reflection_screen.dart';
import 'package:tarot_ai/services/journal_service.dart';
import 'package:tarot_ai/models/journal_entry.dart';
import 'package:tarot_ai/utils/font_utils.dart';
import 'dart:async';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:permission_handler/permission_handler.dart';
import 'dart:ui';
import 'package:tarot_ai/utils/prompt_templates.dart';

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
  int _reflectionStep = 0; // 0: только AI, 1: dots, 2: 1-е сообщение, 3: dots, 4: 2-е сообщение, 5: форма, 6: после ответа пользователя (bubble, dots, финал)
  String? _userReflectionText;
  bool _showDots = false;
  final TextEditingController _controller = TextEditingController();
  stt.SpeechToText? _speech;
  bool _isListening = false;
  String _voiceInput = '';

  @override
  void initState() {
    super.initState();
    // Загружаем имя пользователя
    UserService().loadUserName();
    _controller.addListener(() {
      setState(() {});
    });
    _speech = stt.SpeechToText();
    // Не вызываем _generateResponse() здесь!
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_didCallGenerate) {
      _didCallGenerate = true;
      debugPrint('[QuickReadingResultScreen] didChangeDependencies: checking preGeneratedAnswer');
      if (widget.preGeneratedAnswer != null && widget.preGeneratedAnswer!.isNotEmpty) {
        debugPrint('[QuickReadingResultScreen] Using preGeneratedAnswer: ${widget.preGeneratedAnswer}');
        setState(() {
          _aiResponse = widget.preGeneratedAnswer!;
          _isLoading = false;
        });
        _startReflectionSequence();
      } else {
        debugPrint('[QuickReadingResultScreen] No preGeneratedAnswer, calling _generateResponse');
        _generateResponse();
      }
    }
  }

  Future<void> _generateResponse() async {
    debugPrint('[QuickReadingResultScreen] _generateResponse called');
    setState(() {
      _isLoading = true;
    });
    final l10n = AppLocalizations.of(context);
    try {
      debugPrint('[QuickReadingResultScreen] l10n: $l10n');
      if (l10n == null) {
        debugPrint('[QuickReadingResultScreen] ERROR: l10n is null');
        setState(() {
          _aiResponse = l10n?.quick_reading_result_screen_l10n_null_error ?? 'Error: l10n is null';
          _isLoading = false;
        });
        return;
      }
      final String cardNameRu = CardTranslations.getTranslation(widget.selectedCardName, l10n);
      await UserService().loadUserName();
      final String userName = UserService().userName;
      final lang = widget.languageCode.split('-').first;
      final template = promptTemplates[lang]?['quick_reading_result_screen_prompt'] ?? '';
      final String prompt = interpolatePrompt(
        template,
        {
          'userName': userName,
          'cards': cardNameRu,
          'question': '',
          'language': widget.languageCode,
        },
      );
      debugPrint('[QuickReadingResultScreen] PROMPT TO AI: ' + prompt);
      if (prompt.isEmpty) {
        debugPrint('[QuickReadingResultScreen] ERROR: prompt is empty');
        setState(() {
          _aiResponse = l10n.quick_reading_result_screen_prompt_empty_error;
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
      _startReflectionSequence();
    } catch (e, stack) {
      debugPrint('[QuickReadingResultScreen] ERROR: $e');
      debugPrint('[QuickReadingResultScreen] STACK: $stack');
      setState(() {
        if (e.toString().contains('NO_INTERNET')) {
          _aiResponse = AppLocalizations.of(context)!.no_internet_error;
        } else {
          _aiResponse = l10n?.quick_reading_result_screen_general_error(e.toString()) ?? 'Error: $e';
        }
        _isLoading = false;
      });
    }
  }

  void _startReflectionSequence() async {
    // 1. dots (3.5 сек)
    await Future.delayed(const Duration(milliseconds: 500));
    setState(() { _reflectionStep = 1; _showDots = true; });
    await Future.delayed(const Duration(milliseconds: 3500));
    setState(() { _reflectionStep = 2; _showDots = false; });
    // 2. первое сообщение
    await Future.delayed(const Duration(milliseconds: 500));
    setState(() { _reflectionStep = 3; _showDots = true; });
    await Future.delayed(const Duration(milliseconds: 3500));
    setState(() { _reflectionStep = 4; _showDots = false; });
    // 3. второе сообщение
    await Future.delayed(const Duration(milliseconds: 500));
    setState(() { _reflectionStep = 5; });
    // теперь форма для пользователя
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

  void _onSendReflection() async {
    final text = _controller.text.trim();
    if (text.isEmpty) return;
    final l10n = AppLocalizations.of(context)!;
    setState(() {
      _userReflectionText = text;
      _controller.clear();
      _reflectionStep = 6; // пользователь отправил
      _showDots = true;
    });
    // Сохраняем размышление в журнал
    final entry = JournalEntry(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      date: DateTime.now(),
      spreadKey: 'quick_reading',
      spreadType: l10n.quick_reading_result_screen_quick_spread_type,
      spreadTitle: l10n.quick_reading_result_screen_quick_spread_type,
      cards: [widget.selectedCardName],
      userNote: '',
      reflectionText: text,
      isReflectionComplete: true,
      spreadDescription: null,
      spreadData: null,
      aiInsight: null,
    );
    await JournalService().addEntry(entry);
    await Future.delayed(const Duration(milliseconds: 3500));
    setState(() {
      _showDots = false;
      _reflectionStep = 7; // финальное сообщение
    });
  }

  void _startListening() async {
    final l10n = AppLocalizations.of(context)!;
    // Запрашиваем разрешение на микрофон
    final status = await Permission.microphone.request();
    if (!status.isGranted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(l10n.quick_reading_result_screen_microphone_permission_error),
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
            content: Text(l10n.quick_reading_result_screen_speech_recognition_error(error.errorMsg)),
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
        localeId: widget.languageCode,
        onResult: (result) {
          setState(() {
            _voiceInput = result.recognizedWords;
            _controller.text = _voiceInput;
            _controller.selection = TextSelection.fromPosition(TextPosition(offset: _controller.text.length));
          });
        },
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(l10n.quick_reading_result_screen_speech_not_available),
          backgroundColor: Colors.red,
        ),
      );
    }
  }
  void _stopListening() async {
    if (_speech == null) return;
    await _speech!.stop();
    setState(() => _isListening = false);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final screenSize = MediaQuery.of(context).size;
    final cardWidth = screenSize.width * 0.5;
    final cardHeight = cardWidth * (320 / 220);

    // Split AI response into lines for 'Your card:', 'Answer:', 'Description:'
    final List<String> responseLines = _aiResponse.split('\n');
    String cardTitle = '';
    String answer = '';
    String description = '';

    if (!_isLoading && responseLines.isNotEmpty) {
      // Find "Your card:" line
      int cardLineIndex = responseLines.indexWhere((line) => line.startsWith('Your card:'));
      if (cardLineIndex != -1) {
        // Replace English name with Russian translation
        final cardNameRu = CardTranslations.getTranslation(widget.selectedCardName, l10n);
        cardTitle = l10n.quick_reading_result_screen_your_card(cardNameRu);
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
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.height,
              ),
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
                  if (_isLoading) ...[
                    const SizedBox(height: 18),
                    Center(
                      child: SizedBox(
                        width: 36,
                        height: 36,
                        child: CircularProgressIndicator(
                          strokeWidth: 3.2,
                          valueColor: AlwaysStoppedAnimation<Color>(Color(0xFFDBC195)),
                          backgroundColor: Colors.white24,
                        ),
                      ),
                    ),
                  ],
                  const SizedBox(height: 20),
                  // Удаляю/скрываю центральный текст OpenAI (cardTitle, answer, description)
                  // Было:
                  // Center(
                  //   child: ConstrainedBox(
                  //     constraints: BoxConstraints(maxWidth: 420),
                  //     child: Padding(
                  //       padding: const EdgeInsets.symmetric(horizontal: 16),
                  //       child: Container(
                  //         ...
                  //         child: _isLoading
                  //             ? ...
                  //             : Column(
                  //                 crossAxisAlignment: CrossAxisAlignment.start,
                  //                 children: [ ... ],
                  //               ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  // const SizedBox(height: 40),
                  // Вместо этого просто SizedBox(height: 20), чтобы не было пустого пространства
                  const SizedBox(height: 20),
                  if (!_isLoading && _aiResponse.isNotEmpty) ...[
                    // 0: только AI
                    if (_reflectionStep >= 0)
                      _MessageBubble(
                        text: _aiResponse,
                        isUser: false,
                      ),
                    // 1: dots после AI
                    if (_reflectionStep == 1 && _showDots)
                      const AnimatedDotsWidget(),
                    // 2: первое сообщение таролога
                    if (_reflectionStep >= 2)
                      _MessageBubble(
                        text: l10n.quick_reading_result_screen_reflection_intro,
                        isUser: false,
                      ),
                    // 3: dots после первого сообщения
                    if (_reflectionStep == 3 && _showDots)
                      const AnimatedDotsWidget(),
                    // 4: второе сообщение таролога
                    if (_reflectionStep >= 4)
                      _MessageBubble(
                        text: l10n.quick_reading_result_screen_reflection_question,
                        isUser: false,
                      ),
                    // 5: dots после второго сообщения
                    if (_reflectionStep == 5 && _showDots)
                      const AnimatedDotsWidget(),
                    // 6: форма для пользователя
                    if (_reflectionStep >= 5 && _reflectionStep < 6)
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          margin: const EdgeInsets.only(left: 60, right: 12, bottom: 10),
                          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Flexible(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.08),
                                    borderRadius: BorderRadius.circular(18),
                                    border: Border.all(color: Colors.white.withOpacity(0.3)),
                                  ),
                                  child: TextField(
                                    controller: _controller,
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
                                  icon: Icon(Icons.arrow_forward, color: Color(0xFFDBC195)),
                                  onPressed: _controller.text.trim().isEmpty ? null : _onSendReflection,
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
                                    icon: Icon(Icons.mic, color: Color(0xFFDBC195)),
                                    onPressed: _startListening,
                                  ),
                                )
                              else
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.redAccent,
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child: IconButton(
                                    icon: Icon(Icons.stop, color: Colors.white),
                                    onPressed: _stopListening,
                                  ),
                                ),
                              // Анимация записи
                              if (_isListening)
                                Padding(
                                  padding: const EdgeInsets.only(left: 6, right: 2),
                                  child: SizedBox(
                                    width: 28,
                                    height: 28,
                                    child: _VoiceRecordingDots(),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                    // 7: после отправки — bubble пользователя, dots, финальное сообщение
                    if (_reflectionStep >= 6 && _userReflectionText != null)
                      _MessageBubble(
                        text: _userReflectionText!,
                        isUser: true,
                        userBubbleOpacity: 0.7,
                      ),
                    if (_reflectionStep == 6 && _showDots)
                      const AnimatedDotsWidget(),
                    if (_reflectionStep == 7)
                      _MessageBubble(
                        text: l10n.quick_reading_result_screen_reflection_final,
                        isUser: false,
                      ),
                  ],
                  // AdPromoBlock, кнопка и дисклеймер — только если !_isLoading
                  if (!_isLoading) ...[
                    const SizedBox(height: 18),
                    Center(
                      child: ConstrainedBox(
                        constraints: BoxConstraints(maxWidth: 420),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: AdPromoBlock(),
                        ),
                      ),
                    ),
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
                    if (_aiResponse.isNotEmpty)
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AnimatedDotsWidget extends StatefulWidget {
  const AnimatedDotsWidget({Key? key}) : super(key: key);
  @override
  State<AnimatedDotsWidget> createState() => _AnimatedDotsWidgetState();
}

class _AnimatedDotsWidgetState extends State<AnimatedDotsWidget> with SingleTickerProviderStateMixin {
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

class _MessageBubble extends StatelessWidget {
  final String text;
  final bool isUser;
  final EdgeInsetsGeometry? margin;
  final double userBubbleOpacity;

  const _MessageBubble({
    required this.text,
    this.isUser = false,
    this.margin,
    this.userBubbleOpacity = 1.0,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Стилизация bubble как в 3-карточном чате
    final color = isUser
        ? Colors.white.withOpacity(0.15)
        : const Color(0xFF23272F).withOpacity(0.85);
    final textStyle = const TextStyle(color: Colors.white, fontSize: 16, fontFamily: 'NotoSans');
    final align = isUser ? Alignment.centerRight : Alignment.centerLeft;
    final defaultMargin = isUser
        ? const EdgeInsets.only(left: 60, right: 12, bottom: 10)
        : const EdgeInsets.only(left: 12, right: 60, bottom: 10);
    final borderRadius = BorderRadius.only(
      topLeft: const Radius.circular(16),
      topRight: const Radius.circular(16),
      bottomLeft: isUser ? const Radius.circular(16) : const Radius.circular(4),
      bottomRight: isUser ? const Radius.circular(4) : const Radius.circular(16),
    );
    return Align(
      alignment: align,
      child: isUser
          ? Container(
              margin: margin ?? defaultMargin,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.15),
                borderRadius: borderRadius,
                border: Border.all(color: Colors.white24),
              ),
              child: Text(text, style: textStyle.copyWith(color: Colors.white)),
            )
          : Align(
              alignment: align,
              child: Container(
                margin: margin ?? const EdgeInsets.only(left: 12, right: 60, bottom: 10),
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 420),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(22),
                      topRight: Radius.circular(22),
                      bottomRight: Radius.circular(22),
                      bottomLeft: Radius.circular(6),
                    ),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 18, sigmaY: 18),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.22),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(22),
                            topRight: Radius.circular(22),
                            bottomRight: Radius.circular(22),
                            bottomLeft: Radius.circular(6),
                          ),
                          border: Border.all(color: Colors.white.withOpacity(0.18), width: 1.2),
                        ),
                        child: Text(text.replaceAll('**', '').replaceAll('*', ''), style: textStyle.copyWith(color: Colors.white)),
                      ),
                    ),
                  ),
                ),
              ),
            ),
    );
  }
}

class _ReflectionDialogue extends StatefulWidget {
  final String cardName;
  final String spreadType;
  final List<String> cards;

  const _ReflectionDialogue({
    required this.cardName,
    required this.spreadType,
    required this.cards,
  });

  @override
  State<_ReflectionDialogue> createState() => _ReflectionDialogueState();
}

class _ReflectionDialogueState extends State<_ReflectionDialogue> {
  final TextEditingController _controller = TextEditingController();
  final JournalService _journalService = JournalService();
  int _step = 0;
  bool _isLoading = false;
  String _userResponse = '';
  bool _isComplete = false;

  late List<String> _messages;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final l10n = AppLocalizations.of(context)!;
      _messages = [
        l10n.quick_reading_result_screen_reflection_intro,
        l10n.quick_reading_result_screen_reflection_question,
        l10n.quick_reading_result_screen_reflection_final
      ];
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _nextStep() async {
    if (_step == 1 && _controller.text.trim().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(AppLocalizations.of(context)!.quick_reading_result_screen_please_write_thoughts),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }
    if (_step == 1) {
      setState(() => _isLoading = true);
      _userResponse = _controller.text.trim();
      final entry = JournalEntry(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        date: DateTime.now(),
        spreadKey: 'quick_reading',
        spreadType: widget.spreadType,
        cards: widget.cards,
        userNote: '',
        reflectionText: _userResponse,
        isReflectionComplete: true,
      );
      await _journalService.addEntry(entry);
      setState(() {
        _isLoading = false;
        _isComplete = true;
        _step++;
      });
      return;
    }
    setState(() => _step++);
  }

  @override
  Widget build(BuildContext context) {
    final langCode = Localizations.localeOf(context).toLanguageTag();
    final accentColor = const Color(0xFFDBC195);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // Bubble 1
        if (_step >= 0)
          _bubble(_messages[0], isTarologist: true, accentColor: accentColor, langCode: langCode),
        const SizedBox(height: 12),
        // Bubble 2
        if (_step >= 1)
          _bubble(_messages[1], isTarologist: true, accentColor: accentColor, langCode: langCode),
        const SizedBox(height: 12),
        // Поле для ответа
        if (_step == 1 && !_isComplete)
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.1),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: accentColor.withOpacity(0.3)),
            ),
            child: TextField(
              controller: _controller,
              style: bodyStyleForLang(langCode, 16, color: Colors.white),
              maxLines: 5,
              decoration: InputDecoration(
                hintText: AppLocalizations.of(context)!.quick_reading_result_screen_write_thoughts_hint,
                hintStyle: bodyStyleForLang(langCode, 16, color: Colors.white.withOpacity(0.5)),
                border: InputBorder.none,
              ),
            ),
          ),
        if (_step == 1 && !_isComplete)
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: ElevatedButton(
              onPressed: _isLoading ? null : _nextStep,
              style: ElevatedButton.styleFrom(
                backgroundColor: accentColor,
                foregroundColor: Colors.black,
                minimumSize: const Size(double.infinity, 48),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                elevation: 8,
              ),
              child: _isLoading
                  ? const SizedBox(
                      width: 24,
                      height: 24,
                      child: CircularProgressIndicator(strokeWidth: 2, color: Colors.black),
                    )
                  : Text(AppLocalizations.of(context)!.quick_reading_result_screen_save_reflection, style: headingStyleForLang(langCode, 16, color: Colors.black)),
            ),
          ),
        // Bubble 3 (финальное сообщение)
        if (_step == 2 || _isComplete)
          Padding(
            padding: const EdgeInsets.only(top: 12),
            child: _bubble(_messages[2], isTarologist: true, accentColor: accentColor, langCode: langCode),
          ),
      ],
    );
  }

  Widget _bubble(String text, {required bool isTarologist, required Color accentColor, required String langCode}) {
    return Align(
      alignment: isTarologist ? Alignment.centerLeft : Alignment.centerRight,
      child: Container(
        constraints: const BoxConstraints(maxWidth: 420),
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
        margin: EdgeInsets.only(left: isTarologist ? 0 : 40, right: isTarologist ? 40 : 0),
        decoration: BoxDecoration(
          color: isTarologist ? Colors.black.withOpacity(0.15) : accentColor.withOpacity(0.9),
          borderRadius: BorderRadius.circular(18),
        ),
        child: Text(
          text,
          style: bodyStyleForLang(
            langCode,
            16,
            color: isTarologist ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}

class _VoiceRecordingDots extends StatefulWidget {
  @override
  State<_VoiceRecordingDots> createState() => _VoiceRecordingDotsState();
}
class _VoiceRecordingDotsState extends State<_VoiceRecordingDots> with SingleTickerProviderStateMixin {
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
    int dots = 1 + (_controller.value * 3).floor();
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(dots, (i) =>
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 1),
          child: Container(
            width: 6, height: 6,
            decoration: BoxDecoration(
              color: Colors.redAccent.withOpacity(0.8),
              shape: BoxShape.circle,
            ),
          ),
        ),
      ),
    );
  }
} 