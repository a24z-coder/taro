import 'package:flutter/material.dart';
import 'package:tarot_ai/l10n/app_localizations.dart';
import 'onboarding_name_screen.dart';
import 'language_selection_onboarding_screen.dart';
import '../services/language_service.dart';
import 'package:tarot_ai/utils/font_utils.dart';

String getShortLangCode(String code) {
  if (code.startsWith('ru')) return 'RU';
  if (code.startsWith('en')) return 'EN';
  if (code.startsWith('nl')) return 'NL';
  return code.toUpperCase().split('-').first;
}

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  void _goToLanguageSelection() async {
    await Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => const LanguageSelectionOnboardingScreen()),
    );
    setState(() {}); // обновить язык, если нужно
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final loc = AppLocalizations.of(context)!;
    final langCode = LanguageService().currentLanguageCode;
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (i) => setState(() => _currentPage = i),
            children: [
              // Первая страница — приветствие
              Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      'assets/images/onboarding-1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SafeArea(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.08,
                        vertical: size.height * 0.08,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            loc.main_title,
                            style: headingStyleForLang(langCode, size.width * 0.11, color: Color(0xFFDBC195)).copyWith(height: 1.0),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            loc.personalization_hint,
                            style: bodyStyleForLang(langCode, 18, color: Colors.white.withOpacity(0.9), fontWeight: FontWeight.w300),
                          ),
                          const SizedBox(height: 32),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Row(
                              children: [
                                Expanded(
                                  child: GestureDetector(
                                    onTap: _goToLanguageSelection,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                                      decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(0.13),
                                        borderRadius: BorderRadius.circular(16),
                                        border: Border.all(color: Colors.white, width: 1.2),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text('${loc.language}: $langCode', style: const TextStyle(color: Colors.white, fontSize: 16)),
                                          const SizedBox(width: 6),
                                          const Icon(Icons.arrow_forward_ios, color: Colors.white, size: 16),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: GestureDetector(
                                    onTap: () {
                                      _pageController.animateToPage(
                                        1,
                                        duration: const Duration(milliseconds: 400),
                                        curve: Curves.easeInOut,
                                      );
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 12),
                                      child: Image.asset(
                                        'assets/images/icon-left.png',
                                        width: 38,
                                        height: 38,
                                      ),
                                    ),
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
              // Вторая страница — ввод имени
              const OnboardingNameScreen(),
            ],
          ),
          // Индикатор прогресса
          Positioned(
            left: 0,
            right: 0,
            bottom: size.height * 0.04,
            child: Center(
              child: Container(
                width: size.width * 0.28,
                height: 12,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.18),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Stack(
                  children: [
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      width: (_currentPage == 0 ? 0.45 : 1.0) * (size.width * 0.28),
                      height: 12,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
} 