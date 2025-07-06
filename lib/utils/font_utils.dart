import 'package:flutter/material.dart';

String fontFamilyForLang(String langCode) {
  debugPrint('[FontUtils] fontFamilyForLang: langCode = $langCode');
  
  debugPrint('[FontUtils] fontFamilyForLang: using NotoSans for $langCode');
  return 'NotoSans';
}

TextStyle headingStyleForLang(String langCode, double fontSize, {Color? color}) {
  debugPrint('[FontUtils] headingStyleForLang: langCode = $langCode, fontSize = $fontSize');
  
  debugPrint('[FontUtils] headingStyleForLang: using NotoSans Bold style for $langCode');
  return TextStyle(
    fontFamily: 'NotoSans',
    fontSize: fontSize,
    fontWeight: FontWeight.bold, // Bold для заголовков
    color: color,
  );
}

TextStyle bodyStyleForLang(String langCode, double fontSize, {Color? color, FontWeight? fontWeight}) {
  debugPrint('[FontUtils] bodyStyleForLang: langCode = $langCode, fontSize = $fontSize');
  
  debugPrint('[FontUtils] bodyStyleForLang: using NotoSans Regular style for $langCode');
  return TextStyle(
    fontFamily: 'NotoSans',
    fontSize: fontSize,
    fontWeight: fontWeight ?? FontWeight.normal, // Regular для обычного текста
    color: color,
  );
}

class FontUtils {
  static String getFontFamily(BuildContext context) {
    final locale = Localizations.localeOf(context);
    final languageCode = locale.languageCode;
    
    debugPrint('[FontUtils] getFontFamily: locale = $locale, languageCode = $languageCode');
    
    debugPrint('[FontUtils] getFontFamily: selected NotoSans for $languageCode');
    return 'NotoSans';
  }
} 