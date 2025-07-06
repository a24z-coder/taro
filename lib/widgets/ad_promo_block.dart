import 'package:flutter/material.dart';
import '../screens/purchase_love_screen.dart';
import 'package:tarot_ai/l10n/app_localizations.dart';

class AdPromoBlock extends StatelessWidget {
  final double? maxWidth;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final double? height;
  final VoidCallback? onTap;

  const AdPromoBlock({
    Key? key,
    this.maxWidth,
    this.margin,
    this.padding,
    this.height,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = maxWidth ?? constraints.maxWidth;
        double titleFontSize = 24;
        double badgeFontSize = 24;
        double actionFontSize = 15;
        double bulletFontSize = 16;
        double imageSize = 90;
        if (width < 400) {
          titleFontSize = 18;
          badgeFontSize = 18;
          actionFontSize = 12;
          bulletFontSize = 13;
          imageSize = 60;
        } else if (width < 500) {
          titleFontSize = 20;
          badgeFontSize = 20;
          actionFontSize = 13;
          bulletFontSize = 14;
          imageSize = 75;
        }
        return GestureDetector(
          onTap: onTap ?? () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => const PurchaseLoveScreen()),
            );
          },
          child: Container(
            margin: margin ?? const EdgeInsets.symmetric(vertical: 8),
            padding: padding ?? const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
            decoration: BoxDecoration(
              color: const Color(0xFFCEB88B),
              borderRadius: BorderRadius.circular(24),
            ),
            constraints: BoxConstraints(
              maxWidth: width,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Flexible(
                            child: Text(
                              AppLocalizations.of(context)!.ad_promo_tariff,
                              style: TextStyle(
                                fontSize: titleFontSize,
                                fontWeight: FontWeight.w700,
                                color: Colors.black87,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Flexible(
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                              decoration: BoxDecoration(
                                color: const Color(0xFF3B4B47),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Text(
                                AppLocalizations.of(context)!.ad_promo_love,
                                style: TextStyle(
                                  fontSize: badgeFontSize,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                  letterSpacing: 1.1,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                            decoration: BoxDecoration(
                              color: Colors.redAccent,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Text(
                              AppLocalizations.of(context)!.ad_promo_discount,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: actionFontSize,
                              ),
                            ),
                          ),
                          const SizedBox(width: 14),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(AppLocalizations.of(context)!.ad_promo_no_ads, style: TextStyle(fontSize: bulletFontSize, color: Colors.black87), maxLines: 1, overflow: TextOverflow.ellipsis),
                                Text(AppLocalizations.of(context)!.ad_promo_no_limits, style: TextStyle(fontSize: bulletFontSize, color: Colors.black87), maxLines: 1, overflow: TextOverflow.ellipsis),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 12),
                SizedBox(
                  width: imageSize,
                  height: imageSize,
                  child: Image.asset(
                    'assets/images/tarifflove.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
} 