import 'package:flutter/material.dart';
import 'package:tarot_ai/l10n/app_localizations.dart';
import 'package:tarot_ai/utils/font_utils.dart';
import 'package:tarot_ai/services/journal_service.dart';
import 'package:tarot_ai/models/journal_entry.dart';

class ReflectionScreen extends StatefulWidget {
  final String cardName;
  final String spreadType;
  final String spreadKey;
  final List<String> cards;
  final Map<String, dynamic>? spreadData;
  final String? spreadTitle;
  final String? spreadDescription;

  const ReflectionScreen({
    Key? key,
    required this.cardName,
    required this.spreadType,
    required this.spreadKey,
    required this.cards,
    this.spreadData,
    this.spreadTitle,
    this.spreadDescription,
  }) : super(key: key);

  @override
  State<ReflectionScreen> createState() => _ReflectionScreenState();
}

class _ReflectionScreenState extends State<ReflectionScreen> {
  final TextEditingController _reflectionController = TextEditingController();
  final JournalService _journalService = JournalService();
  bool _isLoading = false;
  int _currentStep = 0;
  String _userResponse = '';

  late List<String> _messages;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final l10n = AppLocalizations.of(context)!;
      _messages = [
        l10n.reflection_screen_intro_message,
        l10n.reflection_screen_question_message,
        l10n.reflection_screen_final_message,
      ];
    });
  }

  @override
  void dispose() {
    _reflectionController.dispose();
    super.dispose();
  }

  void _nextStep() {
    if (_currentStep == 1 && _reflectionController.text.trim().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(AppLocalizations.of(context)!.reflection_screen_please_write_thoughts),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    if (_currentStep == 1) {
      _userResponse = _reflectionController.text.trim();
      _saveReflection();
    }

    setState(() {
      _currentStep++;
    });

    if (_currentStep == 2) {
      _reflectionController.clear();
    }
  }

  Future<void> _saveReflection() async {
    setState(() {
      _isLoading = true;
    });

    try {
      // Создаем запись дневника с саморефлексией
      final entry = JournalEntry(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        date: DateTime.now(),
        spreadKey: widget.spreadKey,
        spreadType: widget.spreadType,
        cards: widget.cards,
        userNote: '',
        spreadData: widget.spreadData,
        spreadTitle: widget.spreadTitle,
        spreadDescription: widget.spreadDescription,
        reflectionText: _userResponse,
        isReflectionComplete: true,
      );

      await _journalService.addEntry(entry);

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(AppLocalizations.of(context)!.reflection_screen_saved_success),
            backgroundColor: Colors.green,
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(AppLocalizations.of(context)!.reflection_screen_save_error(e.toString())),
            backgroundColor: Colors.red,
          ),
        );
      }
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final langCode = Localizations.localeOf(context).toLanguageTag();
    final accentColor = const Color(0xFFDBC195);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          AppLocalizations.of(context)!.reflection_screen_title,
          style: headingStyleForLang(langCode, 18, color: Colors.white),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          // Фоновое изображение
          Positioned.fill(
            child: Image.asset(
              'assets/images/main-2.jpg',
              fit: BoxFit.cover,
            ),
          ),
          
          if (_isLoading)
            const Center(child: CircularProgressIndicator()),
          
          if (!_isLoading)
            Positioned.fill(
              child: SafeArea(
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.08),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: size.height * 0.04),
                      
                      // Заголовок
                      Text(
                        AppLocalizations.of(context)!.reflection_screen_card_of_day(widget.cardName),
                        style: headingStyleForLang(langCode, 24, color: accentColor),
                      ),
                      
                      const SizedBox(height: 32),
                      
                      // Сообщения таролога
                      _buildTarotMessage(_messages[_currentStep]),
                      
                      const SizedBox(height: 24),
                      
                      // Поле ввода (только на втором шаге)
                      if (_currentStep == 1) ...[
                        Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: accentColor.withOpacity(0.3)),
                          ),
                          child: TextField(
                            controller: _reflectionController,
                            style: bodyStyleForLang(langCode, 16, color: Colors.white),
                            maxLines: 6,
                            decoration: InputDecoration(
                              hintText: AppLocalizations.of(context)!.reflection_screen_write_thoughts_hint,
                              hintStyle: bodyStyleForLang(langCode, 16, color: Colors.white.withOpacity(0.5)),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        const SizedBox(height: 24),
                      ],
                      
                      // Кнопка
                      if (_currentStep < 2)
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: _nextStep,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: accentColor,
                              foregroundColor: Colors.black,
                              minimumSize: const Size(double.infinity, 48),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24),
                              ),
                              shadowColor: accentColor.withOpacity(0.5),
                              elevation: 16,
                            ),
                            child: Text(
                              _currentStep == 0 ? AppLocalizations.of(context)!.reflection_screen_continue_button : AppLocalizations.of(context)!.reflection_screen_save_button,
                              style: headingStyleForLang(langCode, 16, color: Colors.black),
                            ),
                          ),
                        ),
                      
                      // Кнопка завершения
                      if (_currentStep == 2)
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: accentColor,
                              foregroundColor: Colors.black,
                              minimumSize: const Size(double.infinity, 48),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24),
                              ),
                              shadowColor: accentColor.withOpacity(0.5),
                              elevation: 16,
                            ),
                            child: Text(
                              AppLocalizations.of(context)!.reflection_screen_finish_button,
                              style: headingStyleForLang(langCode, 16, color: Colors.black),
                            ),
                          ),
                        ),
                      
                      SizedBox(height: size.height * 0.04),
                    ],
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildTarotMessage(String message) {
    final langCode = Localizations.localeOf(context).toLanguageTag();
    final accentColor = const Color(0xFFDBC195);

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: accentColor.withOpacity(0.3)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.psychology, color: accentColor, size: 24),
              const SizedBox(width: 12),
              Text(
                AppLocalizations.of(context)!.reflection_screen_tarologist_name,
                style: headingStyleForLang(langCode, 16, color: accentColor),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            message,
            style: bodyStyleForLang(langCode, 16, color: Colors.white),
          ),
        ],
      ),
    );
  }
} 