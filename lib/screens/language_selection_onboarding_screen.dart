import 'package:flutter/material.dart';
import 'package:tarot_ai/services/language_service.dart';
import 'package:tarot_ai/utils/font_utils.dart';
import 'package:tarot_ai/l10n/app_localizations.dart';

const List<Map<String, String>> onboardingLanguages = [
  {'name': 'Afrikaans', 'code': 'af'},
  {'name': 'Shqip', 'code': 'sq'},
  {'name': 'አማርኛ', 'code': 'am'},
  {'name': 'العربية', 'code': 'ar'},
  {'name': 'Հայերեն', 'code': 'hy-AM'},
  {'name': 'Azərbaycan', 'code': 'az-AZ'},
  {'name': 'বাংলা', 'code': 'bn-BD'},
  {'name': 'Euskara', 'code': 'eu-ES'},
  {'name': 'Беларуская', 'code': 'be'},
  {'name': 'Български', 'code': 'bg'},
  {'name': 'မြန်မာ', 'code': 'my-MM'},
  {'name': 'Català', 'code': 'ca'},
  {'name': '繁體中文', 'code': 'zh-HK'},
  {'name': '简体中文', 'code': 'zh-CN'},
  {'name': '繁體中文', 'code': 'zh-TW'},
  {'name': 'Hrvatski', 'code': 'hr'},
  {'name': 'Čeština', 'code': 'cs-CZ'},
  {'name': 'Dansk', 'code': 'da-DK'},
  {'name': 'Nederlands', 'code': 'nl-NL'},
  {'name': 'English (Australia)', 'code': 'en-AU'},
  {'name': 'English (Canada)', 'code': 'en-CA'},
  {'name': 'English (US)', 'code': 'en-US'},
  {'name': 'English (UK)', 'code': 'en-GB'},
  {'name': 'English (India)', 'code': 'en-IN'},
  {'name': 'English (Singapore)', 'code': 'en-SG'},
  {'name': 'English (South Africa)', 'code': 'en-ZA'},
  {'name': 'Eesti', 'code': 'et'},
  {'name': 'Filipino', 'code': 'fil'},
  {'name': 'Suomi', 'code': 'fi-FI'},
  {'name': 'Français (Canada)', 'code': 'fr-CA'},
  {'name': 'Français', 'code': 'fr-FR'},
  {'name': 'Galego', 'code': 'gl-ES'},
  {'name': 'ქართული', 'code': 'ka-GE'},
  {'name': 'Deutsch', 'code': 'de-DE'},
  {'name': 'Ελληνικά', 'code': 'el-GR'},
  {'name': 'ગુજરાતી', 'code': 'gu'},
  {'name': 'עברית', 'code': 'iw-IL'},
  {'name': 'हिन्दी', 'code': 'hi-IN'},
  {'name': 'Magyar', 'code': 'hu-HU'},
  {'name': 'Íslenska', 'code': 'is-IS'},
  {'name': 'Bahasa Indonesia', 'code': 'id'},
  {'name': 'Italiano', 'code': 'it-IT'},
  {'name': '日本語', 'code': 'ja-JP'},
  {'name': 'ಕನ್ನಡ', 'code': 'kn-IN'},
  {'name': 'Қазақ', 'code': 'kk'},
  {'name': 'ខ្មែរ', 'code': 'km-KH'},
  {'name': '한국어', 'code': 'ko-KR'},
  {'name': 'Кыргызча', 'code': 'ky-KG'},
  {'name': 'ລາວ', 'code': 'lo-LA'},
  {'name': 'Latviešu', 'code': 'lv'},
  {'name': 'Lietuvių', 'code': 'lt'},
  {'name': 'Македонски', 'code': 'mk-MK'},
  {'name': 'Bahasa Melayu', 'code': 'ms-MY'},
  {'name': 'മലയാളം', 'code': 'ml-IN'},
  {'name': 'मराठी', 'code': 'mr-IN'},
  {'name': 'Монгол', 'code': 'mn-MN'},
  {'name': 'नेपाली', 'code': 'ne-NP'},
  {'name': 'Norsk', 'code': 'no-NO'},
  {'name': 'فارسی', 'code': 'fa'},
  {'name': 'فارسی (امارات)', 'code': 'fa-AE'},
  {'name': 'فارسی (افغانستان)', 'code': 'fa-AF'},
  {'name': 'فارسی (ایران)', 'code': 'fa-IR'},
  {'name': 'Polski', 'code': 'pl-PL'},
  {'name': 'Português (Brasil)', 'code': 'pt-BR'},
  {'name': 'Português (Portugal)', 'code': 'pt-PT'},
  {'name': 'ਪੰਜਾਬੀ', 'code': 'pa'},
  {'name': 'Română', 'code': 'ro'},
  {'name': 'Rumantsch', 'code': 'rm'},
  {'name': 'Русский', 'code': 'ru-RU'},
  {'name': 'Српски', 'code': 'sr'},
  {'name': 'සිංහල', 'code': 'si-LK'},
  {'name': 'Slovenčina', 'code': 'sk'},
  {'name': 'Slovenščina', 'code': 'sl'},
  {'name': 'Español (Latinoamérica)', 'code': 'es-419'},
  {'name': 'Español (España)', 'code': 'es-ES'},
  {'name': 'Español (EE.UU.)', 'code': 'es-US'},
  {'name': 'Kiswahili', 'code': 'sw'},
  {'name': 'Svenska', 'code': 'sv-SE'},
  {'name': 'தமிழ்', 'code': 'ta-IN'},
  {'name': 'తెలుగు', 'code': 'te-IN'},
  {'name': 'ไทย', 'code': 'th'},
  {'name': 'Türkçe', 'code': 'tr-TR'},
  {'name': 'Українська', 'code': 'uk'},
  {'name': 'اردو', 'code': 'ur'},
  {'name': 'Tiếng Việt', 'code': 'vi'},
  {'name': 'isiZulu', 'code': 'zu'},
];

class LanguageSelectionOnboardingScreen extends StatefulWidget {
  const LanguageSelectionOnboardingScreen({Key? key}) : super(key: key);

  @override
  State<LanguageSelectionOnboardingScreen> createState() => _LanguageSelectionOnboardingScreenState();
}

class _LanguageSelectionOnboardingScreenState extends State<LanguageSelectionOnboardingScreen> {
  int? _selectedIndex;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final langCode = LanguageService().currentLanguageCode;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
        title: Text(AppLocalizations.of(context)!.language_selection_screen_title, style: const TextStyle(color: Colors.white)),
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/onboarding-1.png',
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.06, vertical: size.height * 0.04),
              child: ListView.separated(
                itemCount: onboardingLanguages.length,
                separatorBuilder: (_, __) => SizedBox(height: size.height * 0.025),
                itemBuilder: (context, index) {
                  final lang = onboardingLanguages[index];
                  final isSelected = _selectedIndex == index;
                  return GestureDetector(
                    onTap: () async {
                      setState(() {
                        _selectedIndex = index;
                      });
                      await LanguageService().setLanguage(lang['code']!);
                      if (context.mounted) Navigator.of(context).pop();
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(isSelected ? 0.22 : 0.13),
                        borderRadius: BorderRadius.circular(24),
                        border: Border.all(
                          color: isSelected ? Colors.amber : Colors.white,
                          width: isSelected ? 2.2 : 1.2,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(0.08),
                            blurRadius: 12,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
                      child: Text(
                        lang['name']!,
                        style: bodyStyleForLang(langCode, size.width * 0.048, color: Colors.white, fontWeight: FontWeight.w400),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
} 