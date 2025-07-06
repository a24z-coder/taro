import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tarot_ai/utils/font_utils.dart';

void main() {
  group('Font Utils Tests', () {
    test('All languages should use NotoSans font', () {
      // Тестируем различные языки - все должны использовать NotoSans
      final testLanguages = [
        'af', 'sq', 'az', 'eu', 'be', 'bg', 'ca', 'hr', 'cs', 'da', 'nl', 'en', 'et', 'fil',
        'fi', 'fr', 'gl', 'hu', 'is', 'id', 'it', 'ky', 'lv', 'lt', 'mk', 'ms', 'mn', 'no',
        'pl', 'pt', 'ro', 'rm', 'ru', 'sr', 'sk', 'sl', 'es', 'sw', 'sv', 'tr', 'uk', 'vi', 'zu',
        'am', 'hy-AM', 'bn-BD', 'my-MM', 'zh-HK', 'zh-CN', 'zh-TW', 'ka-GE', 'el-GR',
        'gu', 'he', 'iw-IL', 'hi-IN', 'ja-JP', 'kn-IN', 'km-KH', 'ko-KR', 'lo-LA',
        'ml-IN', 'mr-IN', 'ne-NP', 'pa', 'si-LK', 'ta-IN', 'te-IN', 'th', 'ur'
      ];

      for (final lang in testLanguages) {
        expect(fontFamilyForLang(lang), equals('NotoSans'),
            reason: 'Language $lang should use NotoSans font');
      }
    });

    test('headingStyleForLang should return NotoSans font family', () {
      final style = headingStyleForLang('en', 16);
      expect(style.fontFamily, equals('NotoSans'));
      expect(style.fontWeight, equals(FontWeight.bold));

      final style2 = headingStyleForLang('ja', 16);
      expect(style2.fontFamily, equals('NotoSans'));
      expect(style2.fontWeight, equals(FontWeight.bold));
    });

    test('bodyStyleForLang should return NotoSans font family', () {
      final style = bodyStyleForLang('ru', 14);
      expect(style.fontFamily, equals('NotoSans'));
      expect(style.fontWeight, equals(FontWeight.normal));

      final style2 = bodyStyleForLang('zh', 14);
      expect(style2.fontFamily, equals('NotoSans'));
      expect(style2.fontWeight, equals(FontWeight.normal));
    });
  });
} 