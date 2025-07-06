import 'package:flutter/material.dart';
import 'package:tarot_ai/l10n/app_localizations.dart';
import 'package:tarot_ai/utils/font_utils.dart';
import 'package:tarot_ai/services/purchase_service.dart';
import 'main_screen.dart';

class PurchaseLoveScreen extends StatefulWidget {
  const PurchaseLoveScreen({Key? key}) : super(key: key);

  @override
  State<PurchaseLoveScreen> createState() => _PurchaseLoveScreenState();
}

class _PurchaseLoveScreenState extends State<PurchaseLoveScreen> {
  int _selectedPlan = 1; // 0 - yearly, 1 - monthly
  late PurchaseService _purchaseService;

  @override
  void initState() {
    super.initState();
    _purchaseService = PurchaseService();
    _initializePurchaseService();
  }

  Future<void> _initializePurchaseService() async {
    await _purchaseService.initialize();
    _purchaseService.addListener(_onPurchaseServiceUpdate);
  }

  void _onPurchaseServiceUpdate() {
    if (mounted) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    _purchaseService.removeListener(_onPurchaseServiceUpdate);
    super.dispose();
  }

  void _onBuy() async {
    final productId = _selectedPlan == 0 
        ? 'tarot_ai_yearly' 
        : 'tarot_ai_monthly';
    
    final success = await _purchaseService.purchaseSubscription(productId);
    
    if (success && mounted) {
      final loc = AppLocalizations.of(context)!;
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(loc.purchase_love_screen_title),
          content: Text(loc.purchase_love_screen_test_message(
            _selectedPlan == 0 ? loc.onboarding_final_yearly : loc.onboarding_final_trial_month,
          )),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (_) => const MainScreen()),
                );
              },
              child: Text(loc.purchase_love_screen_ok_button),
            ),
          ],
        ),
      );
    }
  }

  void _onRestorePurchases() async {
    await _purchaseService.restorePurchases();
    
    if (_purchaseService.isSubscriptionActive() && mounted) {
      final loc = AppLocalizations.of(context)!;
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(loc.purchase_love_screen_title),
          content: const Text('Your subscription has been restored!'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (_) => const MainScreen()),
                );
              },
              child: Text(loc.purchase_love_screen_ok_button),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final langCode = Localizations.localeOf(context).toLanguageTag();
    final loc = AppLocalizations.of(context)!;
    final accentColor = const Color(0xFFDBC195);
    
    // Get real prices from purchase service
    final yearlyPrice = _purchaseService.getFormattedPrice('tarot_ai_yearly');
    final yearlyMonthPrice = _purchaseService.getYearlyMonthlyPrice();
    final monthlyPrice = _purchaseService.getFormattedPrice('tarot_ai_monthly');
    final monthlyMonthPrice = monthlyPrice.isNotEmpty ? monthlyPrice : '';
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
        actions: [
          TextButton(
            onPressed: _onRestorePurchases,
            child: Text(
              'Restore',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/onboarding-4.png',
              fit: BoxFit.cover,
            ),
          ),
          if (_purchaseService.isLoading)
            const Center(child: CircularProgressIndicator()),
          if (!_purchaseService.isLoading)
            Positioned.fill(
              child: SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.08),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(height: 24),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            loc.purchase_love_screen_love_tariff_title,
                            style: headingStyleForLang(langCode, size.width * 0.09, color: accentColor),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          loc.onboarding_final_subtitle,
                          style: bodyStyleForLang(langCode, 17, color: Colors.white),
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(height: 28),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/icons/no_ads.png', width: 26, height: 26),
                                  const SizedBox(width: 10),
                                  Text(
                                    loc.onboarding_final_benefits.split('\n')[0],
                                    style: bodyStyleForLang(langCode, 16, color: Colors.white),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 18),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/icons/unlimited_spreads.png', width: 26, height: 26),
                                  const SizedBox(width: 10),
                                  Text(
                                    loc.onboarding_final_benefits.split('\n')[1],
                                    style: bodyStyleForLang(langCode, 16, color: Colors.white),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 18),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/icons/unlimited_learning.png', width: 26, height: 26),
                                  const SizedBox(width: 10),
                                  Text(
                                    loc.onboarding_final_benefits.split('\n')[2],
                                    style: bodyStyleForLang(langCode, 16, color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 28),
                        _buildPlanOption(
                          selected: _selectedPlan == 0,
                          title: loc.onboarding_final_yearly,
                          badge: loc.onboarding_final_badge,
                          price: yearlyPrice.isNotEmpty ? yearlyPrice : 'Loading...',
                          subPrice: yearlyMonthPrice.isNotEmpty ? '$yearlyMonthPrice/month' : '',
                          onTap: () => setState(() => _selectedPlan = 0),
                        ),
                        const SizedBox(height: 16),
                        _buildPlanOption(
                          selected: _selectedPlan == 1,
                          title: loc.onboarding_final_trial_month,
                          badge: loc.onboarding_final_badge,
                          price: monthlyPrice.isNotEmpty ? monthlyPrice : 'Loading...',
                          subPrice: monthlyMonthPrice.isNotEmpty ? '$monthlyMonthPrice/month' : '',
                          onTap: () => setState(() => _selectedPlan = 1),
                        ),
                        const SizedBox(height: 32),
                        if (_purchaseService.errorMessage != null)
                          Padding(
                            padding: const EdgeInsets.only(bottom: 16),
                            child: Text(
                              _purchaseService.errorMessage!,
                              style: const TextStyle(color: Colors.red, fontSize: 14),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        SizedBox(
                          width: double.infinity,
                          height: 54,
                          child: ElevatedButton(
                            onPressed: _purchaseService.isAvailable ? _onBuy : null,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: accentColor,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
                              elevation: 0,
                            ),
                            child: Text(
                              _selectedPlan == 0
                                  ? loc.onboarding_final_choose_yearly
                                  : loc.onboarding_final_choose_trial,
                              style: const TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        const SizedBox(height: 18),
                        Text(
                          loc.onboarding_final_note,
                          style: const TextStyle(color: Colors.white60, fontSize: 11),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildPlanOption({
    required bool selected,
    required String title,
    required String badge,
    required String price,
    required String subPrice,
    required VoidCallback onTap,
  }) {
    final accentColor = const Color(0xFFDBC195);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(vertical: 4),
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
        decoration: BoxDecoration(
          color: selected ? Colors.white.withOpacity(0.13) : Colors.white.withOpacity(0.07),
          borderRadius: BorderRadius.circular(24),
          border: Border.all(color: selected ? accentColor : Colors.white24, width: 2),
        ),
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 16),
              width: 28,
              height: 28,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: selected ? accentColor : Colors.white38, width: 2),
                color: selected ? accentColor : Colors.transparent,
              ),
              child: selected
                  ? const Icon(Icons.check, color: Colors.black, size: 18)
                  : null,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(title, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18)),
                      const SizedBox(width: 10),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                        decoration: BoxDecoration(
                          color: accentColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(badge, style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 13)),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(price, style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500)),
                  if (subPrice.isNotEmpty)
                    Text(subPrice, style: const TextStyle(color: Colors.white60, fontSize: 13)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
} 