import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tarot_ai/services/translation_service.dart';
import 'package:tarot_ai/services/language_service.dart';
import '../widgets/ad_promo_block.dart';
import 'package:flutter/foundation.dart';
import 'package:tarot_ai/l10n/app_localizations.dart';
import 'package:tarot_ai/utils/card_translations.dart';
import 'card_meanings_screen.dart';
import 'package:stack_appodeal_flutter/stack_appodeal_flutter.dart';

class CardDetailScreen extends StatefulWidget {
  final String cardName;
  final String cardFile;

  const CardDetailScreen({Key? key, required this.cardName, required this.cardFile}) : super(key: key);

  @override
  State<CardDetailScreen> createState() => _CardDetailScreenState();
}

class _CardDetailScreenState extends State<CardDetailScreen> {
  bool _showDetails = false;
  bool _isLoading = false;
  late TranslationService _translationService;
  String? _langCode;
  Map<String, String> _details = {};

  @override
  void initState() {
    super.initState();
    _translationService = TranslationService();
    _loadLang();
  }

  Future<void> _loadLang() async {
    await LanguageService().loadLanguage();
    setState(() {
      _langCode = LanguageService().currentLanguageCode;
    });
  }

  Future<void> _loadOrGenerateDetails() async {
    setState(() { _isLoading = true; });
    final prefs = await SharedPreferences.getInstance();
    final sections = [
      AppLocalizations.of(context)!.card_detail_screen_general_meaning,
      AppLocalizations.of(context)!.card_detail_screen_reversed_meaning,
      AppLocalizations.of(context)!.card_detail_screen_symbolism,
    ];
    Map<String, String> newDetails = {};
    for (final section in sections) {
      final cacheKey = 'card_${widget.cardName}_${_langCode}_$section';
      String? cached = prefs.getString(cacheKey);
      if (cached != null && cached.isNotEmpty) {
        newDetails[section] = cached;
        continue;
      }
      // Generate prompt for each section
      String prompt = _buildPrompt(section, widget.cardName, _langCode ?? LanguageService().currentLanguageCode);
      try {
        final text = await _translationService.getTranslatedText(
          text: prompt,
          targetLanguageCode: _langCode ?? LanguageService().currentLanguageCode,
          isTarotReading: true,
        );
        newDetails[section] = text;
        await prefs.setString(cacheKey, text);
      } catch (e) {
        if (e.toString().contains('NO_INTERNET')) {
          newDetails[section] = AppLocalizations.of(context)!.no_internet_error;
        } else {
          newDetails[section] = AppLocalizations.of(context)!.card_detail_screen_error_loading_text;
        }
      }
    }
    setState(() {
      _details = newDetails;
      _isLoading = false;
    });
  }

  String _buildPrompt(String section, String cardName, String lang) {
    final loc = AppLocalizations.of(context)!;
    if (section == loc.card_detail_screen_general_meaning) {
      return loc.card_detail_screen_general_meaning_prompt(cardName, lang);
    } else if (section == loc.card_detail_screen_reversed_meaning) {
      return loc.card_detail_screen_reversed_meaning_prompt(cardName, lang);
    } else if (section == loc.card_detail_screen_symbolism) {
      return loc.card_detail_screen_symbolism_prompt(cardName, lang);
    }
    return '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.card_detail_screen_title, style: const TextStyle(color: Colors.white)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/main-2.jpg',
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
            top: true,
            bottom: true,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0),
              child: (_showDetails)
                  ? (_isLoading
                      ? const Center(child: CircularProgressIndicator(color: Colors.white))
                      : ListView(
                          padding: EdgeInsets.only(
                            top: 40,
                            bottom: MediaQuery.of(context).padding.bottom + 24,
                          ),
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: AspectRatio(
                                    aspectRatio: 0.65,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(16),
                                      child: Image.asset(
                                        'assets/cards/${widget.cardFile}',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 16),
                                Expanded(
                                  child: AspectRatio(
                                    aspectRatio: 0.65,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(16),
                                      child: Transform.rotate(
                                        angle: 3.14159, // 180 degrees
                                        child: Image.asset(
                                          'assets/cards/${widget.cardFile}',
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 24),
                            Text(
                              AppLocalizations.of(context)!.card_detail_screen_description(CardTranslations.getTranslation(widget.cardName, AppLocalizations.of(context)!)),
                              style: const TextStyle(color: Colors.white, fontSize: 16),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 24),
                            ..._details.entries.where((entry) => entry.key != AppLocalizations.of(context)!.card_detail_screen_original_waite_text).map((entry) => _TarotDetailCard(
                                  title: entry.key,
                                  text: entry.value,
                                )),
                            const SizedBox(height: 24),
                            AdPromoBlock(),
                            const SizedBox(height: 18),
                            SizedBox(
                              width: double.infinity,
                              height: 54,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(builder: (_) => const CardMeaningsScreen()),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
                                  elevation: 0,
                                ),
                                child: Text(
                                  AppLocalizations.of(context)!.card_detail_screen_see_other_card_meaning,
                                  style: const TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            const SizedBox(height: 18),
                            Center(
                              child: ConstrainedBox(
                                constraints: BoxConstraints(maxWidth: 420),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                                  child: Text(
                                    AppLocalizations.of(context)!.app_uses_ai_for_entertainment_purposes,
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
                        ))
                  : ListView(
                      padding: EdgeInsets.only(
                        top: 40,
                        bottom: MediaQuery.of(context).padding.bottom + 24,
                      ),
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: AspectRatio(
                                aspectRatio: 0.65,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(16),
                                  child: Image.asset(
                                    'assets/cards/${widget.cardFile}',
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: AspectRatio(
                                aspectRatio: 0.65,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(16),
                                  child: Transform.rotate(
                                    angle: 3.14159, // 180 degrees
                                    child: Image.asset(
                                      'assets/cards/${widget.cardFile}',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 24),
                        Text(
                          AppLocalizations.of(context)!.card_detail_screen_description(CardTranslations.getTranslation(widget.cardName, AppLocalizations.of(context)!)),
                          style: const TextStyle(color: Colors.white, fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 24),
                        AdPromoBlock(),
                        const SizedBox(height: 18),
                        Text(
                          AppLocalizations.of(context)!.card_detail_screen_or,
                          style: const TextStyle(color: Colors.white, fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 18),
                        SizedBox(
                          width: double.infinity,
                          height: 54,
                          child: ElevatedButton(
                            onPressed: (_langCode == null)
                                ? null
                                : () async {
                                    // --- Показываем рекламу перед логикой ---
                                    try {
                                      bool isLoaded = await Appodeal.isLoaded(AppodealAdType.Interstitial);
                                      if (isLoaded) {
                                        await Appodeal.show(AppodealAdType.Interstitial);
                                        await Appodeal.cache(AppodealAdType.Interstitial);
                                      } else {
                                        await Appodeal.cache(AppodealAdType.Interstitial);
                                      }
                                    } catch (e, st) {
                                      debugPrint('[CardDetail] ERROR showing Appodeal Interstitial: $e\n$st');
                                    }
                                    setState(() { _showDetails = true; });
                                    await _loadOrGenerateDetails();
                                  },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                              elevation: 0,
                            ),
                            child: Text(
                              (_langCode == null)
                                  ? AppLocalizations.of(context)!.card_detail_screen_loading_language
                                  : AppLocalizations.of(context)!.card_detail_screen_see_card_meaning,
                              style: const TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
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

class _TarotDetailCard extends StatefulWidget {
  final String title;
  final String text;
  const _TarotDetailCard({required this.title, required this.text});

  @override
  State<_TarotDetailCard> createState() => _TarotDetailCardState();
}

class _TarotDetailCardState extends State<_TarotDetailCard> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    // Don't show the block if it's the original Waite text and contains a message about missing text
    if ((widget.title == AppLocalizations.of(context)!.card_detail_screen_original_waite_text) &&
        (widget.text.trim().toLowerCase() == AppLocalizations.of(context)!.card_detail_screen_no_original_text.toLowerCase() || widget.text.trim().toLowerCase() == 'no original')) {
      return const SizedBox.shrink();
    }
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(_expanded ? 0.22 : 0.13),
        border: Border.all(color: Color(0xFFDBC195), width: 2),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(24),
          onTap: () => setState(() => _expanded = !_expanded),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(widget.title, style: const TextStyle(color: Color(0xFFDBC195), fontWeight: FontWeight.bold, fontSize: 17)),
                    ),
                    Icon(_expanded ? Icons.expand_less : Icons.expand_more, color: Color(0xFFDBC195)),
                  ],
                ),
                if (_expanded) ...[
                  const SizedBox(height: 8),
                  Text(widget.text, style: const TextStyle(color: Colors.white70, fontSize: 15)),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
} 