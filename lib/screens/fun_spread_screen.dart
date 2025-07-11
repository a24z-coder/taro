import 'package:flutter/material.dart';
import 'package:tarot_ai/services/translation_service.dart';
import 'package:share_plus/share_plus.dart';
import 'dart:io';
import 'dart:typed_data';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'dart:ui' as ui;
import '../widgets/ad_promo_block.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/foundation.dart';
import 'package:tarot_ai/l10n/app_localizations.dart';
import 'package:tarot_ai/services/user_service.dart';
import 'package:tarot_ai/services/language_service.dart';
import 'package:stack_appodeal_flutter/stack_appodeal_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tarot_ai/services/review_service.dart';

class FunSpreadScreen extends StatefulWidget {
  const FunSpreadScreen({Key? key}) : super(key: key);

  @override
  State<FunSpreadScreen> createState() => _FunSpreadScreenState();
}

class _FunSpreadScreenState extends State<FunSpreadScreen> {
  bool _withSwearWords = false;
  String? _generatedText;
  bool _loading = false;

  final GlobalKey _shareKey = GlobalKey();

  Future<void> _generate() async {
    // --- Показываем рекламу перед генерацией расклада ---
    try {
      bool isLoaded = await Appodeal.isLoaded(AppodealAdType.Interstitial);
      if (isLoaded) {
        await Appodeal.show(AppodealAdType.Interstitial);
        await Appodeal.cache(AppodealAdType.Interstitial);
      } else {
        await Appodeal.cache(AppodealAdType.Interstitial);
      }
    } catch (e, st) {
      debugPrint('[FunSpread] ERROR showing Appodeal Interstitial: $e\n$st');
    }
    setState(() { _loading = true; });
    final loc = AppLocalizations.of(context)!;
    
    // Загружаем имя пользователя
    await UserService().loadUserName();
    final userName = UserService().userName.isNotEmpty ? UserService().userName : loc.the_user;
    
    String prompt = _withSwearWords
        ? loc.fun_spread_screen_mate_prompt_3cards(LanguageService().currentLanguageCode, userName)
        : loc.fun_spread_screen_no_mate_prompt_3cards(LanguageService().currentLanguageCode, userName);
    try {
      final text = await TranslationService().getTranslatedText(
        text: prompt,
        targetLanguageCode: LanguageService().currentLanguageCode,
        isTarotReading: false,
      );
      setState(() {
        _generatedText = text;
        _loading = false;
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
          debugPrint('[FunSpread] ReviewService error: $e');
        }
    } catch (e) {
      setState(() {
        if (e.toString().contains('NO_INTERNET')) {
          _generatedText = loc.no_internet_error;
        } else {
          _generatedText = loc.fun_spread_screen_generation_error;
        }
        _loading = false;
      });
    }
  }

  Future<void> _shareImage() async {
    final loc = AppLocalizations.of(context)!;
    try {
      RenderRepaintBoundary boundary = _shareKey.currentContext!.findRenderObject() as RenderRepaintBoundary;
      var image = await boundary.toImage(pixelRatio: 3.5);
      ByteData? byteData = await image.toByteData(format: ui.ImageByteFormat.png);
      if (byteData != null) {
        final pngBytes = byteData.buffer.asUint8List();
        final tempDir = await getTemporaryDirectory();
        final file = await File('${tempDir.path}/fun_spread.png').create();
        await file.writeAsBytes(pngBytes);
        await Share.shareXFiles([XFile(file.path)], text: AppLocalizations.of(context)!.fun_spread_screen_share_text);
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(loc.fun_spread_screen_share_error)));
    }
  }

  void _showInfo() {
    final loc = AppLocalizations.of(context)!;
    showDialog(
      context: context,
      builder: (context) => Dialog(
        backgroundColor: Colors.transparent,
        child: Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.9),
            borderRadius: BorderRadius.circular(24),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                loc.fun_spread_screen_about_fun_spread,
                style: const TextStyle(
                  color: Color(0xFFDBC195),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              Text(
                loc.fun_spread_screen_fun_spread_explanation,
                style: const TextStyle(color: Colors.white, fontSize: 16),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFDBC195),
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    elevation: 0,
                  ),
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text(loc.fun_spread_screen_understand_button, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
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
        title: Text(AppLocalizations.of(context)!.fun_spread_screen_title, style: const TextStyle(color: Colors.white)),
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
                            Builder(
                              builder: (context) {
                                final loc = AppLocalizations.of(context)!;
                                return Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.08),
                                    borderRadius: BorderRadius.circular(16),
                                    border: Border.all(color: Colors.white24),
                                  ),
                                  child: Column(
                                    children: [
                                      RadioListTile<bool>(
                                        value: true,
                                        groupValue: _withSwearWords,
                                        onChanged: (v) => setState(() => _withSwearWords = true),
                                        fillColor: MaterialStateProperty.resolveWith<Color>((states) {
                                          if (states.contains(MaterialState.selected)) {
                                            return const Color(0xFFDBC195);
                                          }
                                          return Colors.white;
                                        }),
                                        title: Text(loc.fun_spread_screen_with_swear_words_title, style: const TextStyle(color: Colors.white)),
                                        subtitle: Text(loc.fun_spread_screen_with_swear_words_subtitle, style: const TextStyle(color: Colors.white70, fontSize: 13)),
                                      ),
                                      RadioListTile<bool>(
                                        value: false,
                                        groupValue: _withSwearWords,
                                        onChanged: (v) => setState(() => _withSwearWords = false),
                                        fillColor: MaterialStateProperty.resolveWith<Color>((states) {
                                          if (states.contains(MaterialState.selected)) {
                                            return const Color(0xFFDBC195);
                                          }
                                          return Colors.white;
                                        }),
                                        title: Text(loc.fun_spread_screen_without_swear_words_title, style: const TextStyle(color: Colors.white)),
                                        subtitle: Text(loc.fun_spread_screen_without_swear_words_subtitle, style: const TextStyle(color: Colors.white70, fontSize: 13)),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                            const SizedBox(height: 18),
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  foregroundColor: Colors.black,
                                  padding: const EdgeInsets.symmetric(vertical: 16),
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
                                ),
                                onPressed: _loading ? null : _generate,
                                child: _loading
                                    ? const SizedBox(width: 24, height: 24, child: CircularProgressIndicator(strokeWidth: 2))
                                    : Text(AppLocalizations.of(context)!.fun_spread_screen_generate_button, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                              ),
                            ),
                            const SizedBox(height: 24),
                          ],
                          if (_loading) ...[
                            const SizedBox(height: 40),
                            const CircularProgressIndicator(color: Color(0xFFDBC195)),
                            const SizedBox(height: 16),
                            Text(AppLocalizations.of(context)!.fun_spread_screen_generating, style: const TextStyle(color: Colors.white, fontSize: 16)),
                          ],
                          if (_generatedText != null) ...[
                            const SizedBox(height: 24),
                            RepaintBoundary(
                              key: _shareKey,
                              child: Center(
                                child: FittedBox(
                                  fit: BoxFit.contain,
                                  child: SizedBox(
                                    width: 780,
                                    height: 1688,
                                    child: Stack(
                                      children: [
                                        Image.asset(
                                          'assets/images/shablon.png',
                                          width: 780,
                                          height: 1688,
                                          fit: BoxFit.contain,
                                        ),
                                        Positioned(
                                          top: 70,
                                          left: 0,
                                          right: 0,
                                          child: Column(
                                            children: [
                                              Text(
                                                AppLocalizations.of(context)!.fun_spread_screen_title_top,
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 42,
                                                  fontWeight: FontWeight.bold,
                                                  letterSpacing: 1.2,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                              const SizedBox(height: 8),
                                              Text(
                                                AppLocalizations.of(context)!.fun_spread_screen_title_for_name(UserService().userName ?? ''),
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 34,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 780 * 0.09,
                                            vertical: 1688 * 0.38,
                                          ),
                                          child: Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              (() {
                                                // Ограничиваем до 7 предложений и очищаем их от лишних символов
                                                final sentences = _generatedText!
                                                    .replaceAll('\n', ' ')
                                                    .split(RegExp(r'(?<=[.!?])\s+'))
                                                    .where((s) => s.trim().isNotEmpty)
                                                    .toList();
                                                final cleanedSentences = sentences.take(7).map((s) =>
                                                  s.replaceAll('*', '')
                                                ).join(' ');
                                                return cleanedSentences;
                                              })(),
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 33,
                                                fontWeight: FontWeight.w600,
                                                height: 1.32,
                                              ),
                                              textAlign: TextAlign.center,
                                              overflow: TextOverflow.visible,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 32),
                            SizedBox(
                              width: double.infinity,
                              height: 54,
                              child: ElevatedButton.icon(
                                icon: const Icon(Icons.share, color: Color(0xFFDBC195)),
                                label: Text(
                                  AppLocalizations.of(context)!.fun_share_button,
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                onPressed: _shareImage,
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
                                  elevation: 0,
                                ),
                              ),
                            ),
                            const SizedBox(height: 16),
                            AdPromoBlock(),
                            const SizedBox(height: 16),
                            SizedBox(
                              width: double.infinity,
                              height: 54,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).popUntil((route) => route.isFirst);
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
                                  elevation: 0,
                                ),
                                child: Text(
                                  AppLocalizations.of(context)!.fun_new_spread_button,
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                          ],
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