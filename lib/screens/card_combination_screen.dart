import 'package:flutter/material.dart';
import 'package:tarot_ai/utils/card_translations.dart';
import 'package:tarot_ai/services/translation_service.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tarot_ai/services/user_service.dart';
import '../widgets/ad_promo_block.dart';
import 'package:tarot_ai/l10n/app_localizations.dart';
import 'package:stack_appodeal_flutter/stack_appodeal_flutter.dart';
import 'package:tarot_ai/services/review_service.dart';
import 'dart:ui';

class CardCombinationScreen extends StatefulWidget {
  const CardCombinationScreen({Key? key}) : super(key: key);

  @override
  State<CardCombinationScreen> createState() => _CardCombinationScreenState();
}

class _CardCombinationScreenState extends State<CardCombinationScreen> {
  final List<String> _allCards = CardTranslations.cards;
  List<String?> _selectedCards = [null, null];
  String? _answerText;
  bool _isLoading = false;
  String? _languageCode;
  late TranslationService _translationService;
  String? _userName;
  bool _isError = false;

  @override
  void initState() {
    super.initState();
    _loadLanguage();
    _translationService = TranslationService();
    _loadUserName();
  }

  Future<void> _loadLanguage() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _languageCode = prefs.getString('language_code') ?? 'ru';
    });
  }

  Future<void> _loadUserName() async {
    await UserService().loadUserName();
    setState(() {
      _userName = UserService().userName;
    });
  }

  void _addCardField() {
    if (_selectedCards.length < 5) {
      setState(() {
        _selectedCards.add(null);
        _answerText = null;
      });
    }
  }

  void _removeCardField(int index) {
    if (_selectedCards.length > 2) {
      setState(() {
        _selectedCards.removeAt(index);
        _answerText = null;
      });
    }
  }

  Future<void> _handleGetCombination() async {
    // Проверяем, что все поля заполнены
    if (_selectedCards.any((c) => c == null || c!.isEmpty)) {
      setState(() {
        _answerText = AppLocalizations.of(context)!.please_fill_all_fields;
      });
      return;
    }
    
    // Проверяем, что все карты существуют в нашем списке
    final invalidCards = _selectedCards.where((card) => !_allCards.contains(card)).toList();
    if (invalidCards.isNotEmpty) {
      setState(() {
        _answerText = AppLocalizations.of(context)!.please_select_cards_only_from_suggested_list;
      });
      return;
    }
    
    // Проверяем, что все карты разные
    if (_selectedCards.toSet().length != _selectedCards.length) {
      setState(() {
        _answerText = AppLocalizations.of(context)!.please_select_different_cards_in_all_fields;
      });
      return;
    }
    // --- Показываем рекламу перед реальным запросом ---
    try {
      bool isLoaded = await Appodeal.isLoaded(AppodealAdType.Interstitial);
      if (isLoaded) {
        await Appodeal.show(AppodealAdType.Interstitial);
        await Appodeal.cache(AppodealAdType.Interstitial);
      } else {
        await Appodeal.cache(AppodealAdType.Interstitial);
      }
    } catch (e, st) {
      debugPrint('[CardCombination] ERROR showing Appodeal Interstitial: $e\n$st');
    }
    setState(() {
      _isLoading = true;
      _answerText = null;
      _isError = false;
    });
    try {
      // Переводим английские названия карт на русский для промпта
      final l10n = AppLocalizations.of(context);
      final russianCardNames = _selectedCards.map((card) => 
        CardTranslations.getTranslatedCardName(card!, l10n!)
      ).join(', ');
      
      final String contextMessage = AppLocalizations.of(context)!.card_combination_screen_prompt(russianCardNames, _languageCode ?? 'ru');
      String aiResponse = await _translationService.getTranslatedText(
        text: contextMessage,
        targetLanguageCode: _languageCode!,
        isTarotReading: true,
      );
      setState(() {
        _answerText = aiResponse;
        _isLoading = false;
        _isError = false;
      });
              // --- Добавлено: логика показа окна оценки ---
        try {
          // Проверяем, не оценил ли пользователь уже приложение
          if (!await ReviewService().getStatistics().then((stats) => stats['hasRated'] ?? false)) {
            final prefs = await SharedPreferences.getInstance();
            int spreadCount = prefs.getInt('spread_count') ?? 0;
            spreadCount++;
            await prefs.setInt('spread_count', spreadCount);
            // Показываем после 3-го расклада, потом через каждые 5 (8, 13, 18, 23...)
            if (spreadCount == 3 || (spreadCount >= 8 && (spreadCount - 3) % 5 == 0)) {
              if (await ReviewService().shouldRequestReview()) {
                await ReviewService().requestReviewWithFallback();
                await ReviewService().markAsRated();
              }
            }
          }
        } catch (e) {
          debugPrint('[CardCombination] ReviewService error: $e');
        }
    } catch (e) {
      setState(() {
        if (e.toString().contains('NO_INTERNET')) {
          _answerText = AppLocalizations.of(context)!.no_internet_error;
        } else {
          _answerText = AppLocalizations.of(context)!.error_getting_answer_try_again;
        }
        _isLoading = false;
        _isError = true;
      });
    }
  }

  // Получаем список карт с русскими названиями для отображения
  List<String> _getTranslatedCards() {
    final l10n = AppLocalizations.of(context);
    if (l10n == null) return _allCards;
    
    return _allCards.map((card) => CardTranslations.getTranslatedCardName(card, l10n)).toList();
  }

  // Получаем английское название карты по русскому
  String? _getEnglishCardName(String russianName) {
    final l10n = AppLocalizations.of(context);
    if (l10n == null) return null;
    
    for (String englishCard in _allCards) {
      if (CardTranslations.getTranslatedCardName(englishCard, l10n) == russianName) {
        return englishCard;
      }
    }
    return null;
  }

  List<String> _getFilteredCards(int index, String pattern) {
    final lowerPattern = pattern.toLowerCase();
    final used = _selectedCards.where((c) => c != null && c != _selectedCards[index]).toSet();
    final translatedCards = _getTranslatedCards();
    
    return translatedCards
        .where((card) {
          // Проверяем, что карта не используется
          final englishCard = _getEnglishCardName(card);
          if (englishCard == null || used.contains(englishCard)) return false;
          
          // Проверяем соответствие паттерну
          return card.toLowerCase().contains(lowerPattern);
        })
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.card_combination_screen_title, style: const TextStyle(color: Colors.white)),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        extendBodyBehindAppBar: true,
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
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    const SizedBox(height: 8),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        margin: const EdgeInsets.only(left: 12, right: 60, bottom: 10),
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
                                child: Text(
                                  AppLocalizations.of(context)!.good_day,
                                  style: const TextStyle(color: Colors.white, fontSize: 16),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 18),
                    ...List.generate(_selectedCards.length, (index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 6.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Autocomplete<String>(
                                optionsBuilder: (TextEditingValue textEditingValue) {
                                  return _getFilteredCards(index, textEditingValue.text);
                                },
                                displayStringForOption: (option) => option,
                                fieldViewBuilder: (context, controller, focusNode, onFieldSubmitted) {
                                  // Отображаем русское название, но храним английское
                                  String displayText = '';
                                  if (_selectedCards[index] != null) {
                                    final l10n = AppLocalizations.of(context);
                                    if (l10n != null) {
                                      displayText = CardTranslations.getTranslatedCardName(_selectedCards[index]!, l10n);
                                    } else {
                                      displayText = _selectedCards[index]!;
                                    }
                                  }
                                  
                                  if (controller.text != displayText) {
                                    controller.text = displayText;
                                  }
                                  
                                  return TextField(
                                    controller: controller,
                                    focusNode: focusNode,
                                    onChanged: (value) {
                                      // При изменении текста ищем соответствующую английскую карту
                                      final englishCard = _getEnglishCardName(value);
                                      setState(() {
                                        _selectedCards[index] = englishCard;
                                      });
                                    },
                                    style: const TextStyle(color: Colors.white, fontSize: 18),
                                    cursorColor: Color(0xFFDBC195),
                                    decoration: InputDecoration(
                                      filled: false,
                                      hintText: AppLocalizations.of(context)!.card,
                                      hintStyle: const TextStyle(color: Colors.white70, fontSize: 18, fontWeight: FontWeight.w400),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(18),
                                        borderSide: const BorderSide(color: Color(0xFFDBC195), width: 1.6),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(18),
                                        borderSide: const BorderSide(color: Color(0xFFDBC195), width: 1.6),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(18),
                                        borderSide: const BorderSide(color: Color(0xFFDBC195), width: 2.2),
                                      ),
                                      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                                    ),
                                  );
                                },
                                onSelected: (String selection) {
                                  // При выборе карты из списка сохраняем английское название
                                  final englishCard = _getEnglishCardName(selection);
                                  setState(() {
                                    _selectedCards[index] = englishCard;
                                  });
                                },
                                optionsViewBuilder: (context, onSelected, options) {
                                  return Align(
                                    alignment: Alignment.topLeft,
                                    child: Material(
                                      elevation: 4.0,
                                      child: SizedBox(
                                        height: 200,
                                        child: ListView.builder(
                                          padding: EdgeInsets.zero,
                                          itemCount: options.length,
                                          itemBuilder: (context, optIdx) {
                                            final option = options.elementAt(optIdx);
                                            return ListTile(
                                              title: Text(option),
                                              onTap: () => onSelected(option),
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            if (_selectedCards.length > 2)
                              IconButton(
                                icon: const Icon(Icons.remove_circle, color: Colors.redAccent),
                                onPressed: () => _removeCardField(index),
                              ),
                          ],
                        ),
                      );
                    }),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 52,
                            child: ElevatedButton(
                              onPressed: _isLoading ? null : _handleGetCombination,
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFFDBC195),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
                                elevation: 0,
                              ),
                              child: Text(
                                AppLocalizations.of(context)!.get_combination,
                                style: const TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        SizedBox(
                          height: 52,
                          width: 52,
                          child: ElevatedButton(
                            onPressed: _selectedCards.length < 5 ? _addCardField : null,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: const CircleBorder(),
                              elevation: 0,
                              padding: EdgeInsets.zero,
                            ),
                            child: const Center(child: Icon(Icons.add, color: Color(0xFFDBC195), size: 32)),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 18),
                    if (_isLoading)
                      const Center(child: CircularProgressIndicator(color: Colors.amber)),
                    if (_answerText != null && !_isError && !_isLoading)
                      Padding(
                        padding: const EdgeInsets.only(top: 18.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            margin: const EdgeInsets.only(left: 12, right: 60, bottom: 10),
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
                                    child: Text(
                                      _answerText!,
                                      style: const TextStyle(color: Colors.white, fontSize: 16),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    if (_answerText != null && _isError)
                      Padding(
                        padding: const EdgeInsets.only(top: 18.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            margin: const EdgeInsets.only(left: 12, right: 60, bottom: 10),
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
                                      color: Colors.red.withOpacity(0.18),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(22),
                                        topRight: Radius.circular(22),
                                        bottomRight: Radius.circular(22),
                                        bottomLeft: Radius.circular(6),
                                      ),
                                      border: Border.all(color: Colors.red.withOpacity(0.35), width: 1.2),
                                    ),
                                    child: Text(
                                      _answerText!,
                                      style: const TextStyle(color: Colors.white, fontSize: 16),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    if (_answerText != null && !_isError && !_isLoading && !_answerText!.startsWith(AppLocalizations.of(context)!.please_fill_all_fields)) ...[
                      AdPromoBlock(),
                      const SizedBox(height: 18),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 0),
                        child: SizedBox(
                          width: double.infinity,
                          height: 48,
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                _selectedCards = [null, null];
                                _answerText = null;
                                _isLoading = false;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24),
                              ),
                              elevation: 0,
                            ),
                            child: Text(
                              AppLocalizations.of(context)!.new_spread,
                              style: const TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 18),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 0),
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
                    ],
                    const SizedBox(height: 32),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
} 