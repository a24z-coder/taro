import 'dart:math';
import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
import '../utils/cards_list.dart';
import '../services/storage_service.dart';
import '../services/translation_service.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tarot_ai/utils/card_translations.dart';
import 'package:tarot_ai/services/language_service.dart';
import 'package:tarot_ai/utils/font_utils.dart';

class CardOfTheDayScreen extends StatefulWidget {
  const CardOfTheDayScreen({super.key});

  @override
  State<CardOfTheDayScreen> createState() => _CardOfTheDayScreenState();
}

class _CardOfTheDayScreenState extends State<CardOfTheDayScreen> {
  final TranslationService translationService = TranslationService();
  String _languageCode = 'en';
  String? description;
  String? cardName;
  String? cardImage;
  bool isLoading = true;
  bool isError = false;
  String errorMessage = '';
  bool canGetNewCard = true;

  @override
  void initState() {
    super.initState();
    _loadLanguage();
    _setCard();
  }

  Future<void> _loadLanguage() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      setState(() {
        _languageCode = prefs.getString('languageCode') ?? 'en';
      });
    } catch (e) {
      setState(() {
        isError = true;
        errorMessage = e.toString();
      });
    }
  }

  Future<void> _setCard() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final today = DateTime.now().toIso8601String().split('T')[0];
      final cardKey = 'card_of_the_day_$today';
      final savedCardData = prefs.getString(cardKey);

      if (savedCardData != null) {
        final data = savedCardData.split('|');
        setState(() {
          cardName = data[0];
          cardImage = data[1];
          isLoading = false;
        });
        _setDescription();
        return;
      }

      final randomCardName = CardTranslations.getRandomCard();
      final String? fileName = CardTranslations.cardToFileMap[randomCardName];
      final String imagePath = fileName != null ? 'assets/cards/$fileName' : '';

      final translatedCardName = await translationService.getTranslatedText(
        text: 'Translate the tarot card name "$randomCardName" to $_languageCode. The response must contain only the translated name, without any additional text or punctuation.',
        targetLanguageCode: _languageCode,
        isTarotReading: false,
      );

      await prefs.setString(cardKey, '${translatedCardName}|$imagePath');

      setState(() {
        cardName = translatedCardName;
        cardImage = imagePath;
        isLoading = false;
      });

      _setDescription();
    } catch (e) {
      setState(() {
        isError = true;
        errorMessage = e.toString();
        isLoading = false;
      });
    }
  }

  Future<void> _setDescription() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final today = DateTime.now().toIso8601String().split('T')[0];
      final descriptionKey = 'card_description_$today';
      final savedDescription = prefs.getString(descriptionKey);

      if (savedDescription != null) {
        setState(() {
          description = savedDescription;
        });
        return;
      }

      final prompt =
          'Generate a short, mystical, and insightful tarot card description for "$cardName" in $_languageCode. Include relevant emojis to enhance the mystical feel. The description should be about the meaning of the card for the day. Here is an example of the desired format and style: "✨ Карта дня: ${cardName}\n\nЭта карта символизирует основные энергии и влияния, которые будут сопровождать вас сегодня. Она предлагает вам обратить внимание на определенные аспекты вашей жизни и может указывать на возможности для роста и развития.\n\n🌟 Прислушайтесь к своему внутреннему голосу и будьте открыты для новых идей и возможностей, которые могут появиться в течение дня."';

      final openAIDescription = await translationService.getTranslatedText(
        text: prompt,
        targetLanguageCode: _languageCode,
        isTarotReading: true,
      );

      await prefs.setString(descriptionKey, openAIDescription);

      setState(() {
        description = openAIDescription;
      });
    } catch (e) {
      setState(() {
        isError = true;
        errorMessage = e.toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final langCode = LanguageService().currentLanguageCode;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
        title: const Text('Карта дня', style: TextStyle(color: Colors.white)),
      ),
      backgroundColor: Colors.transparent,
      body: isLoading
          ? Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(
                    'assets/images/main-2.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                const Center(
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Color(0xFFDBC195)),
                  ),
                ),
              ],
            )
          : isError
              ? Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Error loading card',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        errorMessage,
                        style: const TextStyle(color: Colors.red, fontSize: 14),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                )
              : description == null
                  ? Stack(
                      children: [
                        Positioned.fill(
                          child: Image.asset(
                            'assets/images/main-2.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Center(
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(Color(0xDBC195)),
                          ),
                        ),
                      ],
                    )
                  : Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/main-2.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: SafeArea(
                        child: SingleChildScrollView(
                          padding: const EdgeInsets.only(top: 32, bottom: 24),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(height: 20),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(7),
                                child: Image.asset(
                                  cardImage ?? '',
                                  width: 200,
                                  height: 280,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              const SizedBox(height: 18),
                              Center(
                                child: Container(
                                  width: 200,
                                  height: 44,
                                  decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.35),
                                    borderRadius: BorderRadius.circular(22),
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
                                    cardName ?? '',
                                    style: headingStyleForLang(langCode, 20, color: Colors.white),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 18),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.35),
                                    borderRadius: BorderRadius.circular(16),
                                    border: Border.all(color: Colors.white12),
                                  ),
                                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                                  child: Text(
                                    description ?? '',
                                    style: bodyStyleForLang(langCode, 16, color: Colors.white),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 32),
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
                            ],
                          ),
                        ),
                      ),
                    ),
    );
  }
}