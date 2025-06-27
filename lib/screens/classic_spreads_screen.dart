import 'package:flutter/material.dart';
import 'package:tarot_ai/services/language_service.dart';
import 'package:tarot_ai/utils/font_utils.dart';
import 'chat_with_tarot_reader_screen.dart';
import 'five_card_spread_screen.dart';
import 'celtic_cross_screen.dart';
import 'dart:ui';

class ClassicSpreadsScreen extends StatelessWidget {
  const ClassicSpreadsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final langCode = LanguageService().currentLanguageCode;
    const accentColor = Color(0xFFDBC195);
    Widget glassBlock({
      required Widget icon,
      required String title,
      required String description,
      double height = 110,
      Widget? trailing,
      bool highlight = false,
      Widget? overlay,
    }) {
      return Stack(
        children: [
          if (overlay != null) overlay,
          ClipRRect(
            borderRadius: BorderRadius.circular(22),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 16, sigmaY: 16),
              child: Container(
                height: height,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.35),
                  borderRadius: BorderRadius.circular(22),
                  border: Border.all(color: Colors.white.withOpacity(0.85), width: 1.5),
                  boxShadow: highlight
                      ? [
                          BoxShadow(
                            color: accentColor.withOpacity(0.25),
                            blurRadius: 32,
                            spreadRadius: 2,
                          ),
                        ]
                      : [],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: height,
                      height: height,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(
                            'assets/images/ellipse.png',
                            width: height,
                            height: height,
                            fit: BoxFit.cover,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: SizedBox(
                              width: height - 12,
                              height: height - 12,
                              child: icon,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 18),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              title,
                              style: headingStyleForLang(langCode, 20, color: accentColor),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              description,
                              style: bodyStyleForLang(langCode, 13, color: Colors.white.withOpacity(0.92)),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ),
                    if (trailing != null)
                      Padding(
                        padding: const EdgeInsets.only(right: 16.0),
                        child: trailing,
                      ),
                  ],
                ),
              ),
            ),
          ),
        ],
      );
    }

    return Scaffold(
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
            bottom: false,
            child: Padding(
              padding: EdgeInsets.only(left: 8, right: 8, bottom: 18),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.arrow_back, color: Colors.white),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                      Expanded(
                        child: Text(
                          'Классические расклады',
                          style: headingStyleForLang(langCode, 22, color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Opacity(
                        opacity: 0,
                        child: IconButton(
                          icon: const Icon(Icons.arrow_back),
                          onPressed: null,
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: ListView(
                      padding: EdgeInsets.fromLTRB(8, 0, 8, MediaQuery.of(context).padding.bottom + 24),
                      children: [
                        const SizedBox(height: 24),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 18.0),
                          child: Builder(
                            builder: (context) {
                              void go() {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const ChatWithTarotReaderScreen()),
                                );
                              }
                              return GestureDetector(
                                onTap: go,
                                child: glassBlock(
                                  icon: Image.asset('assets/images/3karty.png', width: 54, height: 54, fit: BoxFit.contain),
                                  title: '3 карты в раскладе',
                                  description: 'прошлое – настоящее – будущее',
                                  height: 110,
                                  trailing: IconButton(
                                    icon: const Icon(Icons.chevron_right, color: Colors.white, size: 36),
                                    onPressed: go,
                                    splashRadius: 24,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 18.0),
                          child: Builder(
                            builder: (context) {
                              void go() {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const FiveCardSpreadScreen()),
                                );
                              }
                              return GestureDetector(
                                onTap: go,
                                child: glassBlock(
                                  icon: Image.asset('assets/images/5karty.png', width: 54, height: 54, fit: BoxFit.contain),
                                  title: '5 карт в раскладе',
                                  description: 'детальный обзор ситуации',
                                  height: 110,
                                  trailing: IconButton(
                                    icon: const Icon(Icons.chevron_right, color: Colors.white, size: 36),
                                    onPressed: go,
                                    splashRadius: 24,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 18.0),
                          child: Builder(
                            builder: (context) {
                              void go() {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const CelticCrossScreen()),
                                );
                              }
                              return GestureDetector(
                                onTap: go,
                                child: glassBlock(
                                  icon: Image.asset('assets/images/krest.png', width: 54, height: 54, fit: BoxFit.contain),
                                  title: 'Кельтский крест',
                                  description: 'полный развёрнутый анализ',
                                  height: 110,
                                  trailing: IconButton(
                                    icon: const Icon(Icons.chevron_right, color: Colors.white, size: 36),
                                    onPressed: go,
                                    splashRadius: 24,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
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