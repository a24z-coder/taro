import 'package:flutter/material.dart';
import 'package:tarot_ai/services/language_service.dart';
import 'package:tarot_ai/utils/font_utils.dart';
import 'package:tarot_ai/l10n/app_localizations.dart';
import 'package:stack_appodeal_flutter/stack_appodeal_flutter.dart';

class SessionCompletedDialog extends StatelessWidget {
  final VoidCallback onViewAnalysis;
  final VoidCallback onReset;

  const SessionCompletedDialog({
    Key? key,
    required this.onViewAnalysis,
    required this.onReset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    final langCode = LanguageService().currentLanguageCode;
    
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 20,
              spreadRadius: 0,
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Иконка
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: const Color(0xFFDBC195),
                borderRadius: BorderRadius.circular(40),
              ),
              child: const Icon(
                Icons.auto_awesome,
                color: Colors.white,
                size: 40,
              ),
            ),
            const SizedBox(height: 20),
            
            // Заголовок
            Text(
              loc.session_completed_title,
              style: headingStyleForLang(langCode, 24, color: Colors.black)
                  .copyWith(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 12),
            
            // Описание
            Text(
              loc.session_completed_description,
              style: bodyStyleForLang(langCode, 16, color: Colors.black87),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            
            // Кнопки
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: onViewAnalysis,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFDBC195),
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text(
                      loc.session_completed_view_analysis,
                      style: bodyStyleForLang(langCode, 16, color: Colors.white)
                          .copyWith(fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: OutlinedButton(
                    onPressed: () async {
                      // Показываем рекламу Appodeal перед сбросом
                      try {
                        bool isLoaded = await Appodeal.isLoaded(AppodealAdType.Interstitial);
                        if (isLoaded) {
                          await Appodeal.show(AppodealAdType.Interstitial);
                          await Appodeal.cache(AppodealAdType.Interstitial);
                        } else {
                          await Appodeal.cache(AppodealAdType.Interstitial);
                        }
                      } catch (e) {
                        // Игнорируем ошибки рекламы
                      }
                      onReset();
                    },
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.grey[600],
                      side: BorderSide(color: Colors.grey[400]!),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text(
                      loc.session_completed_reset,
                      style: bodyStyleForLang(langCode, 16, color: Colors.grey[600])
                          .copyWith(fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
} 