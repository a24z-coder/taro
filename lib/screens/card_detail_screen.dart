import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tarot_ai/services/translation_service.dart';
import 'package:tarot_ai/services/language_service.dart';

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
  Map<String, String> _details = {
    'Общее значение': '',
    'Перевернутое значение': '',
    'Оригинальный текст Уэйта': '',
    'Символизм': '',
  };

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
    final sections = _details.keys.toList();
    Map<String, String> newDetails = {};
    for (final section in sections) {
      final cacheKey = 'card_${widget.cardName}_${_langCode}_$section';
      String? cached = prefs.getString(cacheKey);
      if (cached != null && cached.isNotEmpty) {
        newDetails[section] = cached;
        continue;
      }
      // Генерируем prompt для каждой секции
      String prompt = _buildPrompt(section, widget.cardName, _langCode ?? 'ru-RU');
      try {
        final text = await _translationService.getTranslatedText(
          text: prompt,
          targetLanguageCode: _langCode ?? 'ru-RU',
          isTarotReading: true,
        );
        newDetails[section] = text;
        await prefs.setString(cacheKey, text);
      } catch (e) {
        newDetails[section] = 'Ошибка загрузки текста. Попробуйте позже.';
      }
    }
    setState(() {
      _details = newDetails;
      _isLoading = false;
    });
  }

  String _buildPrompt(String section, String cardName, String lang) {
    switch (section) {
      case 'Общее значение':
        return 'Дай подробное, глубокое и мистическое описание общего значения карты Таро "$cardName". Ответь на языке $lang. Не используй приветствий и заключений.';
      case 'Перевернутое значение':
        return 'Дай подробное, глубокое и мистическое описание перевернутого значения карты Таро "$cardName". Ответь на языке $lang. Не используй приветствий и заключений.';
      case 'Оригинальный текст Уэйта':
        return 'Найди оригинальный текст Артура Уэйта для карты Таро "$cardName" из книги "The Pictorial Key to the Tarot" и переведи его на $lang. Приводи только точный перевод оригинального текста, без пересказа, без добавлений, без сокращений, без приветствий и заключений. Если оригинального текста нет — напиши "Нет оригинального текста".';
      case 'Символизм':
        return 'Опиши символизм и ключевые образы карты Таро "$cardName". Ответь на языке $lang. Не используй приветствий и заключений.';
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('Значение карт', style: TextStyle(color: Colors.white)),
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
                                        angle: 3.14159, // 180 градусов
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
                              'Узнать обычное и перевернутое значение ${widget.cardName}',
                              style: const TextStyle(color: Colors.white, fontSize: 16),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 24),
                            ..._details.entries.map((entry) => _TarotDetailCard(
                                  title: entry.key,
                                  text: entry.value,
                                )),
                            const SizedBox(height: 24),
                            Image.asset(
                              'assets/images/banner_ad.png',
                              width: double.infinity,
                              fit: BoxFit.fitWidth,
                            ),
                            const SizedBox(height: 18),
                            SizedBox(
                              width: double.infinity,
                              height: 54,
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    _showDetails = false;
                                    _details = {
                                      'Общее значение': '',
                                      'Перевернутое значение': '',
                                      'Оригинальный текст Уэйта': '',
                                      'Символизм': '',
                                    };
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                                  elevation: 0,
                                ),
                                child: const Text(
                                  'Узнать значение другой карты',
                                  style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
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
                                    angle: 3.14159, // 180 градусов
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
                          'Узнать обычное и перевернутое значение ${widget.cardName}',
                          style: const TextStyle(color: Colors.white, fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 24),
                        Image.asset(
                          'assets/images/banner_ad.png',
                          width: double.infinity,
                          fit: BoxFit.fitWidth,
                        ),
                        const SizedBox(height: 18),
                        const Text(
                          'или',
                          style: TextStyle(color: Colors.white, fontSize: 16),
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
                                  ? 'Загрузка языка...'
                                  : 'Узнать значение карты',
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
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(_expanded ? 0.22 : 0.13),
        border: Border.all(color: Color(0xFFDBC195), width: 2),
        borderRadius: BorderRadius.circular(22),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(22),
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