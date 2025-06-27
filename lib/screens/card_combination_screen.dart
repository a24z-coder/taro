import 'package:flutter/material.dart';
import 'package:tarot_ai/utils/card_translations.dart';
import 'package:tarot_ai/services/translation_service.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tarot_ai/services/user_service.dart';

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
        _answerText = _languageCode == 'ru'
            ? 'Пожалуйста, заполните все ${_selectedCards.length} полей карт.'
            : 'Please fill all ${_selectedCards.length} card fields.';
      });
      return;
    }
    
    // Проверяем, что все карты существуют в нашем списке
    final invalidCards = _selectedCards.where((card) => !_allCards.contains(card)).toList();
    if (invalidCards.isNotEmpty) {
      setState(() {
        _answerText = _languageCode == 'ru'
            ? 'Пожалуйста, выберите карты только из предложенного списка. Неверные карты: ${invalidCards.join(', ')}'
            : 'Please select cards only from the suggested list. Invalid cards: ${invalidCards.join(', ')}';
      });
      return;
    }
    
    // Проверяем, что все карты разные
    if (_selectedCards.toSet().length != _selectedCards.length) {
      setState(() {
        _answerText = _languageCode == 'ru'
            ? 'Пожалуйста, выберите разные карты во всех полях.'
            : 'Please select different cards in all fields.';
      });
      return;
    }
    setState(() {
      _isLoading = true;
      _answerText = null;
    });
    try {
      final String contextMessage =
        'Проанализируй сочетание карт Таро: ${_selectedCards.join(', ')}.\n'
        'Дай глубокий мистический анализ их взаимодействия и общий совет.\n'
        'Ответ полностью на языке ${_languageCode}. Без приветствий и заключений.';
      String aiResponse = await _translationService.getTranslatedText(
        text: contextMessage,
        targetLanguageCode: _languageCode!,
        isTarotReading: true,
      );
      setState(() {
        _answerText = aiResponse;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _answerText = "Ошибка: не удалось получить ответ. Попробуйте еще раз.";
        _isLoading = false;
      });
    }
  }

  List<String> _getFilteredCards(int index, String pattern) {
    final lowerPattern = pattern.toLowerCase();
    final used = _selectedCards.where((c) => c != null && c != _selectedCards[index]).toSet();
    return _allCards
        .where((card) => !used.contains(card) && card.toLowerCase().contains(lowerPattern))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(_languageCode == 'ru' ? 'Сочетание карт' : 'Card Combination', style: const TextStyle(color: Colors.white)),
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
            Container(
              color: Colors.black.withOpacity(0.35),
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
                    Text(
                      _languageCode == 'ru'
                          ? 'Добрый день${_userName != null && _userName!.isNotEmpty ? ', $_userName' : ''},\nВыберите карты, чтобы узнать сочетание и значение'
                          : 'Good day${_userName != null && _userName!.isNotEmpty ? ', $_userName' : ''},\nSelect cards to learn their combination and meaning',
                      style: const TextStyle(color: Colors.white, fontSize: 16),
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
                                  if (controller.text != (_selectedCards[index] ?? '')) {
                                    controller.text = _selectedCards[index] ?? '';
                                  }
                                  
                                  // Проверяем, есть ли введенная карта в списке
                                  final isValidCard = controller.text.isEmpty || _allCards.contains(controller.text);
                                  
                                  return TextField(
                                    controller: controller,
                                    focusNode: focusNode,
                                    onChanged: (value) {
                                      setState(() {
                                        _selectedCards[index] = value.isEmpty ? null : value;
                                      });
                                    },
                                    style: const TextStyle(color: Color(0xFFDBC195), fontSize: 18),
                                    cursorColor: Color(0xFFDBC195),
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white.withOpacity(0.35),
                                      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(16),
                                        borderSide: BorderSide(
                                          color: isValidCard ? Color(0xFFDBC195) : Colors.red, 
                                          width: 1.5
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(16),
                                        borderSide: BorderSide(
                                          color: isValidCard ? Color(0xFFDBC195) : Colors.red, 
                                          width: 1.5
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(16),
                                        borderSide: BorderSide(
                                          color: isValidCard ? Color(0xFFDBC195) : Colors.red, 
                                          width: 2
                                        ),
                                      ),
                                      hintText: _languageCode == 'ru' ? 'Карта ${index + 1}' : 'Card ${index + 1}',
                                      hintStyle: const TextStyle(color: Color(0xFFDBC195), fontSize: 18, fontWeight: FontWeight.w400),
                                      errorText: !isValidCard && controller.text.isNotEmpty 
                                          ? (_languageCode == 'ru' ? 'Карта не найдена' : 'Card not found')
                                          : null,
                                      errorStyle: const TextStyle(color: Colors.red, fontSize: 12),
                                    ),
                                  );
                                },
                                onSelected: (String selection) {
                                  setState(() {
                                    _selectedCards[index] = selection;
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
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
                                elevation: 0,
                              ),
                              child: Text(
                                _languageCode == 'ru' ? 'Узнать сочетание' : 'Get Combination',
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
                    if (_answerText != null)
                      Padding(
                        padding: const EdgeInsets.only(top: 18.0),
                        child: Text(
                          _answerText!,
                          style: const TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    if (_answerText != null &&
                        _answerText != (_languageCode == 'ru' ? 'Пожалуйста, заполните все ${_selectedCards.length} полей карт.' : 'Please fill all ${_selectedCards.length} card fields.') &&
                        !_answerText!.contains(_languageCode == 'ru' ? 'Пожалуйста, выберите карты только из предложенного списка' : 'Please select cards only from the suggested list') &&
                        _answerText != (_languageCode == 'ru' ? 'Пожалуйста, выберите разные карты во всех полях.' : 'Please select different cards in all fields.') &&
                        !_answerText!.startsWith('Ошибка:')) ...[
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 0),
                        child: Image.asset(
                          'assets/images/banner_ad.png',
                          width: double.infinity,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
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
                                borderRadius: BorderRadius.circular(30),
                              ),
                              elevation: 0,
                            ),
                            child: Text(
                              _languageCode == 'ru' ? 'Сделать новый расклад' : 'New spread',
                              style: const TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
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