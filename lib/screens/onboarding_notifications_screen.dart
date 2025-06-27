import 'package:flutter/material.dart';
import 'package:tarot_ai/l10n/app_localizations.dart';
import 'package:tarot_ai/utils/font_utils.dart';
import 'onboarding_final_screen.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class OnboardingNotificationsScreen extends StatelessWidget {
  const OnboardingNotificationsScreen({Key? key}) : super(key: key);

  Future<void> _requestNotificationPermission(BuildContext context) async {
    await FirebaseMessaging.instance.requestPermission();
    // Можно обработать статус, если нужно
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => const OnboardingFinalScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final langCode = Localizations.localeOf(context).toLanguageTag();
    print('OnboardingNotificationsScreen langCode: ' + langCode);
    final loc = AppLocalizations.of(context)!;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/onboarding-3.png',
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.08),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(),
                  Text(
                    loc.onboarding_notifications_title,
                    style: headingStyleForLang(langCode, size.width * 0.09, color: Color(0xFFDBC195)),
                  ),
                  const SizedBox(height: 18),
                  Text(
                    loc.onboarding_notifications_subtitle,
                    style: bodyStyleForLang(langCode, 17, color: Colors.white.withOpacity(0.85)),
                  ),
                  const SizedBox(height: 32),
                  GestureDetector(
                    onTap: () => _requestNotificationPermission(context),
                    child: Container(
                      width: double.infinity,
                      height: 56,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(22),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(0.55),
                            blurRadius: 18,
                            spreadRadius: 2,
                            offset: const Offset(0, 0),
                          ),
                        ],
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        loc.onboarding_notifications_allow,
                        style: headingStyleForLang(langCode, 20, color: Colors.black),
                      ),
                    ),
                  ),
                  const SizedBox(height: 18),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (_) => const OnboardingFinalScreen()),
                        );
                      },
                      child: Text(
                        loc.onboarding_notifications_decline,
                        style: bodyStyleForLang(langCode, 16, color: Colors.white.withOpacity(0.8), fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  const SizedBox(height: 48),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
} 