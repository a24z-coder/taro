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
    'hy': 'Հայերեն',
    'az': 'Azərbaycan',
    'bn': 'বাংলা',
    'eu': 'Euskara',
    'be': 'Беларуская',
    'bg': 'Български',
    'my': 'မြန်မာ',
    'ca': 'Català',
    'zh': '中文',
    'zh-HK': '繁體中文 (香港)',
    'zh-CN': '简体中文',
    'zh-TW': '繁體中文 (台灣)',
    'hr': 'Hrvatski',
    'cs': 'Čeština',
    'da': 'Dansk',
    'nl': 'Nederlands',
    'en': 'English',
    'en-AU': 'English (Australia)',
    'en-CA': 'English (Canada)',
    'en-GB': 'English (UK)',
    'en-IN': 'English (India)',
    'en-SG': 'English (Singapore)',
    'en-US': 'English (US)',
    'en-ZA': 'English (South Africa)',
    'et': 'Eesti',
    'fil': 'Filipino',
    'fi': 'Suomi',
    'fr': 'Français',
    'fr-CA': 'Français (Canada)',
    'fr-FR': 'Français (France)',
    'gl': 'Galego',
    'ka': 'ქართული',
    'de': 'Deutsch',
    'el': 'Ελληνικά',
    'gu': 'ગુજરાતી',
    'he': 'עברית',
    'hi': 'हिन्दी',
    'hu': 'Magyar',
    'is': 'Íslenska',
    'id': 'Bahasa Indonesia',
    'it': 'Italiano',
    'ja': '日本語',
    'kn': 'ಕನ್ನಡ',
    'kk': 'Қазақ',
    'km': 'ខ្មែរ',
    'ko': '한국어',
    'ky': 'Кыргызча',
    'lo': 'ລາວ',
    'lv': 'Latviešu',
    'lt': 'Lietuvių',
    'mk': 'Македонски',
    'ms': 'Bahasa Melayu',
    'ml': 'മലയാളം',
    'mr': 'मराठी',
    'mn': 'Монгол',
    'ne': 'नेपाली',
    'no': 'Norsk',
    'fa': 'فارسی',
    'fa-AE': 'فارسی (امارات)',
    'fa-AF': 'فارسی (افغانستان)',
    'fa-IR': 'فارسی (ایران)',
    'pl': 'Polski',
    'pt': 'Português',
    'pt-BR': 'Português (Brasil)',
    'pt-PT': 'Português (Portugal)',
    'pa': 'ਪੰਜਾਬੀ',
    'ro': 'Română',
    'rm': 'Rumantsch',
    'ru': 'Русский',
    'sr': 'Српски',
    'si': 'සිංහල',
    'sk': 'Slovenčina',
    'sl': 'Slovenščina',
    'es': 'Español',
    'es-419': 'Español (Latinoamérica)',
    'es-ES': 'Español (España)',
    'es-US': 'Español (EE.UU.)',
    'sw': 'Kiswahili',
    'sv': 'Svenska',
    'ta': 'தமிழ்',
    'te': 'తెలుగు',
    'th': 'ไทย',
    'tr': 'Türkçe',
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
        Navigator.of(context).pop();
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