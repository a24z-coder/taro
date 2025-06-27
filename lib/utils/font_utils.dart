import 'package:flutter/material.dart';

const ancizarSupportedLangs = [
  'en', // поддержка английского без региона
  'af', 'sq', 'eu-ES', 'ca', 'hr', 'cs-CZ', 'da-DK', 'nl', 'nl-NL',
  'en-AU', 'en-CA', 'en-US', 'en-GB', 'en-IN', 'en-SG', 'en-ZA',
  'et', 'fil', 'fi-FI', 'fr-CA', 'fr-FR', 'gl-ES', 'de-DE', 'hu-HU',
  'is-IS', 'id', 'it-IT', 'lv', 'lt', 'no-NO', 'pl-PL', 'pt-BR', 'pt-PT',
  'ro', 'rm', 'sk', 'sl', 'es-419', 'es-ES', 'es-US', 'sv-SE', 'tr-TR', 'vi'
  // + возможно uk, ru, be, sr, mk, bg если кириллица поддерживается полностью
];

String fontFamilyForLang(String langCode) {
  if (ancizarSupportedLangs.contains(langCode)) {
    return 'AncizarSerif';
  }
  return 'NotoSans';
}

TextStyle headingStyleForLang(String langCode, double fontSize, {Color? color}) {
  if (ancizarSupportedLangs.contains(langCode)) {
    return TextStyle(
      fontFamily: 'AncizarSerif',
      fontSize: fontSize,
      fontWeight: FontWeight.w800,
      fontStyle: FontStyle.italic,
      color: color,
    );
  } else {
    return TextStyle(
      fontFamily: 'NotoSans',
      fontSize: fontSize,
      fontWeight: FontWeight.bold,
      color: color,
    );
  }
}

TextStyle bodyStyleForLang(String langCode, double fontSize, {Color? color, FontWeight? fontWeight}) {
  if (ancizarSupportedLangs.contains(langCode)) {
    return TextStyle(
      fontFamily: 'AncizarSerif',
      fontSize: fontSize,
      fontWeight: fontWeight ?? FontWeight.normal,
      color: color,
    );
  } else {
    return TextStyle(
      fontFamily: 'NotoSans',
      fontSize: fontSize,
      fontWeight: fontWeight ?? FontWeight.normal,
      color: color,
    );
  }
}

class FontUtils {
  static const List<String> _ancizarLanguages = [
    'ru',
    'en',
    'nl',
    'nl-NL',
  ];

  static String getFontFamily(BuildContext context) {
    final locale = Localizations.localeOf(context);
    final languageCode = locale.languageCode;
    
    return _ancizarLanguages.contains(languageCode) 
        ? 'Ancizar Serif' 
        : 'Noto Sans';
  }
} 