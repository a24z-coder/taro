import 'package:flutter/material.dart';
import 'package:tarot_ai/services/translation_service.dart';
import 'package:share_plus/share_plus.dart';

class FunSpreadScreen extends StatefulWidget {
  const FunSpreadScreen({Key? key}) : super(key: key);

  @override
  State<FunSpreadScreen> createState() => _FunSpreadScreenState();
}

class _FunSpreadScreenState extends State<FunSpreadScreen> {
  String _mode = 'no_mate';
  String? _generatedText;
  bool _loading = false;

  Future<void> _generate() async {
    setState(() { _loading = true; });
    final prompt = _mode == 'mate'
        ? 'Сгенерируй шуточный, дерзкий, с матом, но не оскорбительный расклад на таро для соцсетей. 5 предложений, не длиннее 350 символов.'
        : 'Сгенерируй шуточный, позитивный, без мата расклад на таро для соцсетей. 5 предложений, не длиннее 350 символов.';
    try {
      final text = await TranslationService().getTranslatedText(
        text: prompt,
        targetLanguageCode: 'ru',
        isTarotReading: false,
      );
      setState(() {
        _generatedText = text;
        _loading = false;
      });
    } catch (e) {
      setState(() {
        _generatedText = 'Ошибка генерации. Попробуйте ещё раз.';
        _loading = false;
      });
    }
  }

  Future<void> _shareImage() async {
    try {
      await Share.share('Мой шуточный расклад!\n\n$_generatedText');
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Ошибка при отправке')));
    }
  }

  void _showInfo() {
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
              const Row(
                children: [
                  Icon(Icons.info_outline, color: Color(0xFFDBC195)),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      'О шуточном раскладе',
                      style: TextStyle(
                        color: Color(0xFFDBC195),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Text(
                'Этот расклад создан для развлечения и поднятия настроения. Выберите стиль, сгенерируйте текст и поделитесь им в соцсетях!',
                style: TextStyle(color: Colors.white, fontSize: 16),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFDBC195),
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    elevation: 0,
                  ),
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text('Понятно', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
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
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
        title: const Text('Шуточный расклад', style: TextStyle(color: Colors.white)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: GestureDetector(
              onTap: _showInfo,
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
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset('assets/images/main-2.jpg', fit: BoxFit.cover),
          ),
          SafeArea(
            child: LayoutBuilder(
              builder: (context, constraints) {
                return SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(minHeight: constraints.maxHeight),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(height: 24),
                          if (!_loading && _generatedText == null) ...[
                            // Выбор стиля
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.08),
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(color: Colors.white24),
                              ),
                              child: Column(
                                children: [
                                  RadioListTile<String>(
                                    value: 'mate',
                                    groupValue: _mode,
                                    onChanged: (v) => setState(() => _mode = v!),
                                    fillColor: MaterialStateProperty.resolveWith<Color>((states) {
                                      if (states.contains(MaterialState.selected)) {
                                        return const Color(0xFFDBC195);
                                      }
                                      return Colors.white;
                                    }),
                                    title: const Text('С матом', style: TextStyle(color: Colors.white)),
                                  ),
                                  RadioListTile<String>(
                                    value: 'no_mate',
                                    groupValue: _mode,
                                    onChanged: (v) => setState(() => _mode = v!),
                                    fillColor: MaterialStateProperty.resolveWith<Color>((states) {
                                      if (states.contains(MaterialState.selected)) {
                                        return const Color(0xFFDBC195);
                                      }
                                      return Colors.white;
                                    }),
                                    title: const Text('Без мата', style: TextStyle(color: Colors.white)),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 18),
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  foregroundColor: Colors.black,
                                  padding: const EdgeInsets.symmetric(vertical: 16),
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                                ),
                                onPressed: _loading ? null : _generate,
                                child: _loading
                                    ? const SizedBox(width: 24, height: 24, child: CircularProgressIndicator(strokeWidth: 2))
                                    : const Text('Сделать расклад', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                              ),
                            ),
                            const SizedBox(height: 24),
                          ],
                          if (_loading)
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 32),
                              child: Center(child: CircularProgressIndicator(color: Color(0xFFDBC195))),
                            ),
                          if (_generatedText != null)
                            Column(
                              children: [
                                Container(
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Image.asset('assets/images/shablon.png'),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10.0),
                                        child: Center(
                                          child: Text(
                                            _generatedText!,
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              height: 1.15,
                                              fontWeight: FontWeight.w600,
                                              shadows: [Shadow(blurRadius: 4, color: Colors.black54, offset: Offset(1,1))],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 18),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ElevatedButton.icon(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white,
                                        foregroundColor: Colors.black,
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                                      ),
                                      onPressed: _shareImage,
                                      icon: const Icon(Icons.share),
                                      label: const Text('Поделиться'),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 18),
                                // Ad-баннер
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.asset(
                                    'assets/images/tarifflove.png',
                                    fit: BoxFit.fitWidth,
                                    width: double.infinity,
                                    height: 80,
                                  ),
                                ),
                                const SizedBox(height: 18),
                                SizedBox(
                                  width: double.infinity,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      foregroundColor: Colors.black,
                                      padding: const EdgeInsets.symmetric(vertical: 16),
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                                    ),
                                    onPressed: () => setState(() { _generatedText = null; }),
                                    child: const Text('Сделать новый расклад', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                                  ),
                                ),
                              ],
                            ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
} 