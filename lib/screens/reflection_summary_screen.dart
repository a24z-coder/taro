import 'package:flutter/material.dart';
import 'package:tarot_ai/l10n/app_localizations.dart';
import 'package:tarot_ai/utils/font_utils.dart';
import 'package:tarot_ai/services/journal_service.dart';
import 'package:tarot_ai/services/translation_service.dart';
import 'package:tarot_ai/models/journal_entry.dart';
import 'package:intl/intl.dart';
import 'package:tarot_ai/utils/card_translations.dart';
import 'package:stack_appodeal_flutter/stack_appodeal_flutter.dart';
import 'package:tarot_ai/utils/subscription_utils.dart';
import 'package:tarot_ai/widgets/ad_promo_block.dart';
import 'package:tarot_ai/services/user_service.dart';
import 'dart:ui';

class ReflectionSummaryScreen extends StatefulWidget {
  const ReflectionSummaryScreen({Key? key}) : super(key: key);

  @override
  State<ReflectionSummaryScreen> createState() => _ReflectionSummaryScreenState();
}

class _ReflectionSummaryScreenState extends State<ReflectionSummaryScreen> {
  final JournalService _journalService = JournalService();
  final TranslationService _translationService = TranslationService();
  List<JournalEntry?> _reflectionEntries = [];
  bool _isLoading = false;
  bool _showRecommendations = false;
  String _aiRecommendations = '';

  @override
  void initState() {
    super.initState();
    _loadReflectionEntries();
  }

  Future<void> _loadReflectionEntries() async {
    setState(() {
      _isLoading = true;
    });

    try {
      final allEntries = _journalService.getAllEntries();
      final reflectionEntries = allEntries
          .where((entry) => entry.hasReflection)
          .toList()
        ..sort((a, b) => a.date.compareTo(b.date)); // сортировка по дате (старые сверху)
      // Заполняем до 7 блоков
      final List<JournalEntry?> blocks = List.generate(7, (i) => null);
      for (int i = 0; i < reflectionEntries.length && i < 7; i++) {
        blocks[i] = reflectionEntries[i];
      }
      setState(() {
        _reflectionEntries = blocks;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(AppLocalizations.of(context)!.reflection_summary_load_error(e.toString())),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  Future<void> _getAIRecommendations() async {
    if (_reflectionEntries.length < 7) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(AppLocalizations.of(context)!.reflection_summary_need_7_entries),
          backgroundColor: Colors.orange,
        ),
      );
      return;
    }

    setState(() {
      _isLoading = true;
    });

    try {
      // Собираем все ответы пользователя
      final allReflections = _reflectionEntries
          .where((entry) => entry?.reflectionText != null && entry!.reflectionText!.isNotEmpty)
          .map((entry) => entry!.reflectionText!)
          .join('\n\n');

      // Собираем все карты
      final allCards = _reflectionEntries
          .where((entry) => entry?.cards != null && entry!.cards.isNotEmpty)
          .expand((entry) => entry!.cards)
          .toList();

      final userName = UserService().userName;
      final prompt = AppLocalizations.of(context)!.reflection_summary_ai_prompt(
        userName,
        allReflections,
        allCards.join(', '),
        Localizations.localeOf(context).toLanguageTag(),
      );

      final recommendations = await _translationService.getTranslatedText(
        text: prompt,
        targetLanguageCode: Localizations.localeOf(context).toLanguageTag(),
        isTarotReading: true,
      );

      setState(() {
        _aiRecommendations = recommendations;
        _isLoading = false;
      });

      if (mounted) {
        showDialog(
          context: context,
          builder: (context) {
            final langCode = Localizations.localeOf(context).toLanguageTag();
            final accentColor = const Color(0xFFDBC195);
            return Dialog(
              backgroundColor: Colors.white.withOpacity(0.95),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.psychology, color: accentColor, size: 28),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Text(
                            AppLocalizations.of(context)!.reflection_summary_ai_recommendations_title,
                            style: headingStyleForLang(langCode, 18, color: accentColor),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 18),
                    Text(
                      recommendations,
                      style: bodyStyleForLang(langCode, 16, color: Colors.black87),
                    ),
                    const SizedBox(height: 24),
                    Align(
                      alignment: Alignment.centerRight,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: accentColor,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                          elevation: 0,
                          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        ),
                        onPressed: () async {
                          Navigator.of(context).pop();
                          // После закрытия диалога — сбрасываем 7 размышлений
                          final entriesToDelete = List<JournalEntry>.from(_reflectionEntries.whereType<JournalEntry>());
                          for (final entry in entriesToDelete) {
                            await _journalService.deleteEntry(entry.id);
                          }
                          // Сбросить прогресс сессии (золотые карты)
                          await JournalService().resetCurrentSession();
                          // Обновляем список
                          await _loadReflectionEntries();
                        },
                        child: Text(AppLocalizations.of(context)!.reflection_summary_ok_button, style: headingStyleForLang(langCode, 16, color: Colors.white)),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      }
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(AppLocalizations.of(context)!.reflection_summary_error_getting_analysis),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final langCode = Localizations.localeOf(context).toLanguageTag();
    final accentColor = const Color(0xFFDBC195);
    final cardBgColor = Colors.white.withOpacity(0.10);
    final borderColor = Colors.white.withOpacity(0.18);
    final placeholderStyle = TextStyle(
      color: Colors.white.withOpacity(0.5),
      fontStyle: FontStyle.italic,
      fontFamily: 'NotoSans',
      fontSize: 15,
    );
    final titleStyle = headingStyleForLang(langCode, 22.0).copyWith(color: Colors.white, fontWeight: FontWeight.bold);
    final blockTitleStyle = headingStyleForLang(langCode, 16.0).copyWith(fontWeight: FontWeight.bold, color: Colors.white);
    final blockTextStyle = bodyStyleForLang(langCode, 15.0).copyWith(color: Colors.white);
    final blackTextStyle = bodyStyleForLang(langCode, 15.0).copyWith(color: Colors.black, fontWeight: FontWeight.bold);

    final completedCount = _reflectionEntries.where((e) => e?.reflectionText != null && e!.reflectionText!.isNotEmpty).length;
    final leftToAnalyze = (7 - completedCount).clamp(0, 7);
    final allFilled = completedCount == 7;

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
        title: Text(AppLocalizations.of(context)!.reflection_summary_screen_title, style: titleStyle, textAlign: TextAlign.center),
      ),
      body: SafeArea(
        top: true,
        bottom: false,
        child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/main-2.jpg',
              fit: BoxFit.cover,
            ),
          ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    child: ListView.separated(
                padding: const EdgeInsets.only(bottom: 32),
                itemCount: 2 + 7,
                      separatorBuilder: (_, __) => const SizedBox(height: 14),
                      itemBuilder: (context, i) {
                        if (i == 0) {
                          return Column(
                            children: [
                              Text(AppLocalizations.of(context)!.reflection_summary_left_to_analyze(leftToAnalyze.toString()), style: bodyStyleForLang(langCode, 15, color: Colors.white.withOpacity(0.85)), textAlign: TextAlign.center),
                              if (!allFilled)
                                Padding(
                                  padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
                            child: Text(
                              AppLocalizations.of(context)!.reflection_summary_instruction_text,
                              style: bodyStyleForLang(langCode, 15, color: Colors.white.withOpacity(0.85)),
                              textAlign: TextAlign.center,
                            ),
                                ),
                            ],
                          );
                        } else if (i == 1 && allFilled) {
                          return Column(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: _isLoading ? null : () async {
                              setState(() { _isLoading = true; });
                              final analysisFuture = _getAIRecommendations();
                              if (SubscriptionUtils.shouldShowAds()) {
                                try {
                                  bool isLoaded = await Appodeal.isLoaded(AppodealAdType.Interstitial);
                                  if (isLoaded) {
                                    await Appodeal.show(AppodealAdType.Interstitial);
                                    await Appodeal.cache(AppodealAdType.Interstitial);
                                  } else {
                                    await Appodeal.cache(AppodealAdType.Interstitial);
                                  }
                                } catch (e, st) {
                                  debugPrint('[ReflectionSummary] ERROR showing Appodeal Interstitial: $e\n$st');
                                }
                              }
                              await analysisFuture;
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: accentColor,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                              elevation: 0,
                              padding: const EdgeInsets.symmetric(vertical: 16),
                            ),
                            child: _isLoading
                              ? const SizedBox(
                                  width: 24, height: 24,
                                  child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white),
                                )
                              : Text(AppLocalizations.of(context)!.reflection_summary_see_analysis_button,
                                  style: headingStyleForLang(langCode, 17, color: Colors.white)),
                          ),
                        ),
                    Padding(
                                padding: const EdgeInsets.only(top: 12, bottom: 8),
                                child: AdPromoBlock(),
                              ),
                            ],
                          );
                        } else if (i >= 2) {
                          final blockIndex = i - 2;
                          final entry = _reflectionEntries.length > blockIndex ? _reflectionEntries[blockIndex] : null;
                          return _buildReflectionBlock(entry, blockIndex, langCode, blackTextStyle);
                        } else {
                          return const SizedBox.shrink();
                        }
                      },
                    ),
                    ),
                ],
              ),
      ),
    );
  }

  Widget _buildReflectionBlock(JournalEntry? entry, int index, [String? langCode, TextStyle? blackTextStyle]) {
    langCode ??= Localizations.localeOf(context).toLanguageTag();
    final accentColor = const Color(0xFFDBC195);
    final isFilled = entry != null && entry.reflectionText != null && entry.reflectionText!.isNotEmpty;
    // Glassmorphism style
    final blockTitleStyle = headingStyleForLang(langCode, 16.0).copyWith(fontWeight: FontWeight.bold, color: Colors.white);
    final blockLabelStyle = headingStyleForLang(langCode, 15.0).copyWith(fontWeight: FontWeight.bold, color: Colors.white);
    final blockTextStyle = bodyStyleForLang(langCode, 15.0).copyWith(color: Colors.white);
    final placeholderStyle = TextStyle(
      color: Colors.white.withOpacity(0.5),
      fontStyle: FontStyle.italic,
      fontFamily: 'NotoSans',
      fontSize: 15,
    );
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 16, sigmaY: 16),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(isFilled ? 0.18 : 0.10),
              borderRadius: BorderRadius.circular(24),
              border: Border.all(color: Colors.white.withOpacity(0.25), width: 1.2),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.08),
                  blurRadius: 16,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Заголовок с эмодзи, жирный, белый
                      Text(AppLocalizations.of(context)!.reflection_summary_spread_label(entry?.spreadTitle ?? entry?.spreadType ?? ''), style: blockTitleStyle),
                      const SizedBox(height: 8),
                      // Карты в раскладе: label с эмодзи, жирный белый + значения белым через запятую
                      IntrinsicHeight(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 140,
                              child: Text(AppLocalizations.of(context)!.reflection_summary_cards_label, style: blockLabelStyle),
                            ),
                            Expanded(
                              child: (entry != null && entry.cards.isNotEmpty)
                                  ? Text(
                                      entry.cards.map((card) {
                                        final l10n = AppLocalizations.of(context);
                                        final cardRu = l10n != null ? CardTranslations.getTranslation(card, l10n) : card;
                                        return cardRu;
                                      }).join(', '),
                                      style: blockTextStyle,
                                    )
                                  : Text(AppLocalizations.of(context)!.reflection_summary_empty_placeholder, style: placeholderStyle),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),
                      // Мысли: label с эмодзи, жирный белый + answer белым
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(AppLocalizations.of(context)!.reflection_summary_thoughts_label, style: blockLabelStyle),
                          Expanded(
                                                      child: (entry != null && entry.reflectionText != null && entry.reflectionText!.isNotEmpty)
                              ? Text(entry.reflectionText!, style: blockTextStyle)
                              : Text(AppLocalizations.of(context)!.reflection_summary_empty_placeholder, style: placeholderStyle),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      // Дата: label с эмодзи, жирный белый + answer белым
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(AppLocalizations.of(context)!.reflection_summary_date_label, style: blockLabelStyle),
                          Expanded(
                                                      child: (entry != null)
                              ? Text(DateFormat('dd.MM.yyyy HH:mm').format(entry.date), style: blockTextStyle)
                              : Text(AppLocalizations.of(context)!.reflection_summary_empty_placeholder, style: placeholderStyle),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                // Чекбокс в правом верхнем углу
                Positioned(
                  top: 16,
                  right: 20,
                  child: _CustomCheckbox(
                    checked: isFilled,
                    color: Colors.white.withOpacity(0.85),
                    accent: accentColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAIRecommendations() {
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
                AppLocalizations.of(context)!.reflection_summary_ai_recommendations_title,
                style: headingStyleForLang(langCode, 16, color: accentColor),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            _aiRecommendations,
            style: bodyStyleForLang(langCode, 16, color: Colors.white),
          ),
        ],
      ),
    );
  }
}

// Кастомный чекбокс с галочкой в стиле glassmorphism
class _CustomCheckbox extends StatelessWidget {
  final bool checked;
  final Color color;
  final Color accent;
  const _CustomCheckbox({required this.checked, required this.color, required this.accent});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 28,
      height: 28,
      decoration: BoxDecoration(
        color: checked ? accent.withOpacity(0.95) : Colors.white.withOpacity(0.10),
        border: Border.all(color: color, width: 2),
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          if (checked)
            BoxShadow(
              color: accent.withOpacity(0.25),
              blurRadius: 8,
              offset: Offset(0, 2),
            ),
        ],
      ),
      child: checked
          ? Center(
              child: Icon(
                Icons.check,
                size: 18,
                color: Colors.white,
              ),
            )
          : null,
    );
  }
} 