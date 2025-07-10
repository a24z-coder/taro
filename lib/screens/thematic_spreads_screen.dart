import 'package:flutter/material.dart';
import 'package:tarot_ai/services/language_service.dart';
import 'package:tarot_ai/utils/font_utils.dart';
import 'package:tarot_ai/l10n/app_localizations.dart';
import 'love_spread_screen.dart';
import 'career_finance_spread_screen.dart';
import 'pros_cons_spread_screen.dart';
import 'monthly_forecast_spread_screen.dart';
import 'self_development_balance_spread_screen.dart';
import 'dart:ui';

class ThematicSpreadsScreen extends StatelessWidget {
  const ThematicSpreadsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final langCode = LanguageService().currentLanguageCode;
    final loc = AppLocalizations.of(context)!;
    const accentColor = Color(0xFFDBC195);
    Widget glassBlock({
      required Widget icon,
      required String title,
      required String description,
      double? height,
      Widget? trailing,
      bool highlight = false,
      Widget? overlay,
    }) {
      const accentColor = Color(0xFFDBC195);
      return Stack(
        children: [
          if (overlay != null) overlay,
          ClipRRect(
            borderRadius: BorderRadius.circular(22),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 18, sigmaY: 18),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.22),
                  borderRadius: BorderRadius.circular(22),
                  border: Border.all(color: Colors.white.withOpacity(0.18), width: 1.2),
                  boxShadow: [
                          BoxShadow(
                      color: Colors.black.withOpacity(0.13),
                      blurRadius: 18,
                      offset: Offset(0, 4),
                          ),
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      width: height ?? 110,
                      height: height ?? 110,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(
                            'assets/images/ellipse.png',
                            width: height ?? 110,
                            height: height ?? 110,
                            fit: BoxFit.cover,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: SizedBox(
                              width: (height ?? 110) - 12,
                              height: (height ?? 110) - 12,
                              child: icon,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 18),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 14.0, bottom: 14.0, right: 18.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              title,
                              style: headingStyleForLang(Localizations.localeOf(context).toLanguageTag(), 20, color: Colors.white).copyWith(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              description,
                              style: bodyStyleForLang(Localizations.localeOf(context).toLanguageTag(), 13, color: Colors.white.withOpacity(0.92)),
                              softWrap: true,
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
                          loc.thematic_spreads_screen_title,
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
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const LoveSpreadScreen()),
                              );
                            },
                            child: glassBlock(
                              icon: Image.asset('assets/images/love.png', width: 54, height: 54, fit: BoxFit.contain),
                              title: loc.thematic_spreads_screen_love_spread_title,
                              description: loc.thematic_spreads_screen_love_spread_description,
                              trailing: Icon(Icons.chevron_right, color: Colors.white, size: 36),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 18.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const CareerFinanceSpreadScreen()),
                              );
                            },
                            child: glassBlock(
                              icon: Image.asset('assets/images/money.png', width: 54, height: 54, fit: BoxFit.contain),
                              title: loc.thematic_spreads_screen_career_finance_title,
                              description: loc.thematic_spreads_screen_career_finance_description,
                              trailing: Icon(Icons.chevron_right, color: Colors.white, size: 36),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 18.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const ProsConsSpreadScreen()),
                              );
                            },
                            child: glassBlock(
                              icon: Image.asset('assets/images/yesno.png', width: 54, height: 54, fit: BoxFit.contain),
                              title: loc.thematic_spreads_screen_pros_cons_title,
                              description: loc.thematic_spreads_screen_pros_cons_description,
                              trailing: Icon(Icons.chevron_right, color: Colors.white, size: 36),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 18.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const MonthlyForecastSpreadScreen()),
                              );
                            },
                            child: glassBlock(
                              icon: Image.asset('assets/images/12.png', width: 54, height: 54, fit: BoxFit.contain),
                              title: loc.thematic_spreads_screen_monthly_forecast_title,
                              description: loc.thematic_spreads_screen_monthly_forecast_description,
                              trailing: Icon(Icons.chevron_right, color: Colors.white, size: 36),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 18.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const SelfDevelopmentBalanceSpreadScreen()),
                              );
                            },
                            child: glassBlock(
                              icon: Image.asset('assets/images/inyan.png', width: 54, height: 54, fit: BoxFit.contain),
                              title: loc.thematic_spreads_screen_self_development_title,
                              description: loc.thematic_spreads_screen_self_development_description,
                              trailing: Icon(Icons.chevron_right, color: Colors.white, size: 36),
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
    );
  }
} 