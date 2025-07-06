import 'package:flutter/material.dart';
import 'package:tarot_ai/l10n/app_localizations.dart';
import '../services/user_service.dart';
import 'main_screen.dart';
import '../services/language_service.dart';
import 'package:tarot_ai/utils/font_utils.dart';
import 'onboarding_notifications_screen.dart';

class OnboardingNameScreen extends StatefulWidget {
  const OnboardingNameScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingNameScreen> createState() => _OnboardingNameScreenState();
}

class _OnboardingNameScreenState extends State<OnboardingNameScreen> {
  final TextEditingController _controller = TextEditingController();
  String _name = '';
  final langCode = LanguageService().currentLanguageCode;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final loc = AppLocalizations.of(context)!;
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/onboarding-2.png',
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.08),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    loc.your_name,
                    style: headingStyleForLang(langCode, size.width * 0.11, color: Color(0xFFDBC195)),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.13),
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(color: Colors.white, width: 1.2),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white.withOpacity(0.08),
                          blurRadius: 12,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: TextField(
                      controller: _controller,
                      onChanged: (value) {
                        setState(() {
                          _name = value;
                        });
                      },
                      style: bodyStyleForLang(langCode, 22, color: Colors.white),
                      cursorColor: Color(0xFFDBC195),
                      decoration: InputDecoration(
                        hintText: loc.your_name,
                        hintStyle: bodyStyleForLang(langCode, 22, color: Colors.white54),
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    loc.language_hint,
                    style: bodyStyleForLang(langCode, 17, color: Colors.white.withOpacity(0.85), fontWeight: FontWeight.w300),
                  ),
                  const SizedBox(height: 20),
                  if (_name.trim().length >= 2) ...[
                    Center(
                      child: GestureDetector(
                        onTap: () async {
                          await UserService().setUserName(_name.trim());
                          if (context.mounted) {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(builder: (_) => const OnboardingNotificationsScreen()),
                            );
                          }
                        },
                        child: Container(
                          width: double.infinity,
                          height: 56,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(24),
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
                            loc.start_button,
                            style: headingStyleForLang(langCode, 26, color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ],
                  const SizedBox(height: 80),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
} 