import 'package:flutter/material.dart';
import 'package:tarot_ai/l10n/app_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'main_screen.dart';
import '../services/language_service.dart';
import 'package:tarot_ai/utils/font_utils.dart';

final Map<String, String> nativeLanguageNames = {
    'af': 'Afrikaans',
    'sq': 'Shqip',
    'am': 'አማርኛ',
    'ar': 'العربية',
    'hy-AM': 'Հայերեն',
    'az-AZ': 'Azərbaycan',
    'bn-BD': 'বাংলা',
    'eu-ES': 'Euskara',
    'be': 'Беларуская',
    'bg': 'Български',
    'my-MM': 'မြန်မာ',
    'ca': 'Català',
    'zh-HK': '繁體中文',
    'zh-CN': '简体中文',
    'zh-TW': '繁體中文',
    'hr': 'Hrvatski',
    'cs-CZ': 'Čeština',
    'da-DK': 'Dansk',
    'nl-NL': 'Nederlands',
    'en-AU': 'English (Australia)',
    'en-CA': 'English (Canada)',
    'en-US': 'English (US)',
    'en-GB': 'English (UK)',
    'en-IN': 'English (India)',
    'en-SG': 'English (Singapore)',
    'en-ZA': 'English (South Africa)',
    'et': 'Eesti',
    'fil': 'Filipino',
    'fi-FI': 'Suomi',
    'fr-CA': 'Français (Canada)',
    'fr-FR': 'Français',
    'gl-ES': 'Galego',
    'ka-GE': 'ქართული',
    'de-DE': 'Deutsch',
    'el-GR': 'Ελληνικά',
    'gu': 'ગુજરાતી',
    'iw-IL': 'עברית',
    'hi-IN': 'हिन्दी',
    'hu-HU': 'Magyar',
    'is-IS': 'Íslenska',
    'id': 'Bahasa Indonesia',
    'it-IT': 'Italiano',
    'ja-JP': '日本語',
    'kn-IN': 'ಕನ್ನಡ',
    'kk': 'Қазақ',
    'km-KH': 'ខ្មែរ',
    'ko-KR': '한국어',
    'ky-KG': 'Кыргызча',
    'lo-LA': 'ລາວ',
    'lv': 'Latviešu',
    'lt': 'Lietuvių',
    'mk-MK': 'Македонски',
    'ms-MY': 'Bahasa Melayu',
    'ml-IN': 'മലയാളം',
    'mr-IN': 'मराठी',
    'mn-MN': 'Монгол',
    'ne-NP': 'नेपाली',
    'no-NO': 'Norsk',
    'fa': 'فارسی',
    'fa-AE': 'فارسی (امارات)',
    'fa-AF': 'فارسی (افغانستان)',
    'fa-IR': 'فارسی (ایران)',
    'pl-PL': 'Polski',
    'pt-BR': 'Português (Brasil)',
    'pt-PT': 'Português (Portugal)',
    'pa': 'ਪੰਜਾਬੀ',
    'ro': 'Română',
    'rm': 'Rumantsch',
    'ru-RU': 'Русский',
    'sr': 'Српски',
    'si-LK': 'සිංහල',
    'sk': 'Slovenčina',
    'sl': 'Slovenščina',
    'es-419': 'Español (Latinoamérica)',
    'es-ES': 'Español (España)',
    'es-US': 'Español (EE.UU.)',
    'sw': 'Kiswahili',
    'sv-SE': 'Svenska',
    'ta-IN': 'தமிழ்',
    'te-IN': 'తెలుగు',
    'th': 'ไทย',
    'tr-TR': 'Türkçe',
    'uk': 'Українська',
    'ur': 'اردو',
    'vi': 'Tiếng Việt',
    'zu': 'isiZulu',
  };

class LanguageSelectionScreen extends StatefulWidget {
  const LanguageSelectionScreen({super.key});

  @override
  State<LanguageSelectionScreen> createState() => _LanguageSelectionScreenState();
}

class _LanguageSelectionScreenState extends State<LanguageSelectionScreen> {
  String? _selectedLanguage;

  Future<void> _saveLanguageAndNavigate() async {
    if (_selectedLanguage != null) {
      await LanguageService().setLanguage(_selectedLanguage!);
      if (mounted) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const MainScreen()),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
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
        title: Text(AppLocalizations.of(context)!.language, style: bodyStyleForLang(langCode, 16)),
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Theme.of(context).colorScheme.primary,
              Theme.of(context).colorScheme.secondary,
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  AppLocalizations.of(context)!.language_hint,
                  style: bodyStyleForLang(langCode, 16, color: Colors.white70),
                  textAlign: TextAlign.center,
                ),
              ),
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                  itemCount: nativeLanguageNames.length,
                  itemBuilder: (context, index) {
                    final languageCode = nativeLanguageNames.keys.elementAt(index);
                    final languageName = nativeLanguageNames[languageCode]!;
                    return Card(
                      margin: const EdgeInsets.symmetric(vertical: 4),
                      child: ListTile(
                        title: Text(languageName, style: bodyStyleForLang(langCode, 16)),
                        selected: _selectedLanguage == languageCode,
                        onTap: () {
                          setState(() {
                            _selectedLanguage = languageCode;
                          });
                        },
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 8, 20, 20),
                child: ElevatedButton(
                  onPressed: _selectedLanguage != null ? _saveLanguageAndNavigate : null,
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 50),
                  ),
                  child: Text(AppLocalizations.of(context)!.continueBtn),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
} 