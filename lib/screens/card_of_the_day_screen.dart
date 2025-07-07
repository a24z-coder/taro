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
import '../widgets/ad_promo_block.dart';
import 'package:flutter/foundation.dart';
import 'package:tarot_ai/l10n/app_localizations.dart';
import 'package:tarot_ai/services/user_service.dart';
import 'package:stack_appodeal_flutter/stack_appodeal_flutter.dart';
import 'package:tarot_ai/utils/subscription_utils.dart';

class CardOfTheDayScreen extends StatefulWidget {
  const CardOfTheDayScreen({super.key});

  @override
  State<CardOfTheDayScreen> createState() => _CardOfTheDayScreenState();
}

class _CardOfTheDayScreenState extends State<CardOfTheDayScreen> {
  final TranslationService translationService = TranslationService();
  String _languageCode = 'en';
  String? _userName;
  String? description;
  String? cardName;
  String? cardImage;
  bool isLoading = true;
  bool isError = false;
  String errorMessage = '';
  bool canGetNewCard = true;
  
  // Переменные для параллельной загрузки
  bool _isLoadingNewDescription = false;
  String? _newDescription;
  Future<String>? _descriptionFuture;

  @override
  void initState() {
    super.initState();
    _loadLanguage();
    _loadUserName();
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

  Future<void> _loadUserName() async {
    await UserService().loadUserName();
    setState(() {
      _userName = UserService().userName;
    });
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
        text: AppLocalizations.of(context)!.card_of_the_day_screen_translate_card_name_prompt(randomCardName, _languageCode),
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
        if (e.toString().contains('NO_INTERNET')) {
          errorMessage = AppLocalizations.of(context)!.no_internet_error;
        } else {
          errorMessage = e.toString();
        }
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

      final translatedCardName = CardTranslations.getTranslation(cardName ?? '', AppLocalizations.of(context)!);

      final prompt = AppLocalizations.of(context)!.card_of_the_day_screen_generate_description_prompt(
        translatedCardName,
        _userName ?? '',
      );

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

  // Метод для параллельной загрузки нового описания
  Future<String> _loadNewDescription() async {
    try {
      final translatedCardName = CardTranslations.getTranslation(cardName ?? '', AppLocalizations.of(context)!);
      
      final prompt = AppLocalizations.of(context)!.card_of_the_day_screen_generate_description_prompt(
        translatedCardName,
        _userName ?? '',
      );

      final openAIDescription = await translationService.getTranslatedText(
        text: prompt,
        targetLanguageCode: _languageCode,
        isTarotReading: true,
      );

      return openAIDescription;
    } catch (e) {
      throw e;
    }
  }

  // Метод для показа рекламы и параллельной загрузки описания
  Future<void> _showAdAndLoadDescription() async {
    setState(() {
      _isLoadingNewDescription = true;
      _newDescription = null;
    });

    // Начинаем загрузку описания параллельно
    _descriptionFuture = _loadNewDescription();

    // Показываем рекламу только если нет активной подписки
    if (SubscriptionUtils.shouldShowAds()) {
      try {
        // Показываем рекламу
        bool isLoaded = await Appodeal.isLoaded(AppodealAdType.Interstitial);
        debugPrint('[CardOfTheDayScreen] Appodeal Interstitial loaded: $isLoaded');
        if (isLoaded) {
          debugPrint('[CardOfTheDayScreen] Showing Appodeal Interstitial ad');
          await Appodeal.show(AppodealAdType.Interstitial);
          debugPrint('[CardOfTheDayScreen] Appodeal Interstitial ad shown');
          await Appodeal.cache(AppodealAdType.Interstitial);
        } else {
          debugPrint('[CardOfTheDayScreen] Appodeal Interstitial not loaded, caching now');
          await Appodeal.cache(AppodealAdType.Interstitial);
        }
      } catch (e, st) {
        debugPrint('[CardOfTheDayScreen] ERROR showing Appodeal Interstitial: $e\n$st');
      }
    } else {
      debugPrint('[CardOfTheDayScreen] Skipping ad - user has active subscription');
    }

    // Ждем завершения загрузки описания (если еще не завершилось)
    final newDescription = await _descriptionFuture;
    if (newDescription != null) {
      setState(() {
        description = newDescription;
        _isLoadingNewDescription = false;
        _newDescription = null;
        _descriptionFuture = null;
      });

      // Сохраняем новое описание
      final prefs = await SharedPreferences.getInstance();
      final today = DateTime.now().toIso8601String().split('T')[0];
      final descriptionKey = 'card_description_$today';
      await prefs.setString(descriptionKey, newDescription);
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
        title: Text(AppLocalizations.of(context)!.card_of_the_day_screen_title, style: const TextStyle(color: Colors.white)),
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
                      Text(
                        AppLocalizations.of(context)!.card_of_the_day_screen_error_loading_card,
                        style: const TextStyle(color: Colors.white, fontSize: 18),
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
                            valueColor: AlwaysStoppedAnimation<Color>(Color(0xFFDBC195)),
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
                                    CardTranslations.getTranslation(cardName ?? '', AppLocalizations.of(context)!),
                                    style: headingStyleForLang(langCode, 20, color: Colors.white),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 18),
                              Center(
                                child: ConstrainedBox(
                                  constraints: BoxConstraints(maxWidth: 420),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 16),
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
                                ),
                              ),
                              const SizedBox(height: 32),
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
                                    padding: const EdgeInsets.symmetric(horizontal: 0),
                                    child: Text(
                                      AppLocalizations.of(context)!.app_uses_ai_for_entertainment_purposes,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white60,
                                        fontSize: 11,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
    );
  }
}