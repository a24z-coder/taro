import 'package:flutter/material.dart';
import 'package:tarot_ai/l10n/app_localizations.dart';
import 'package:tarot_ai/utils/font_utils.dart';
import 'main_screen.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnboardingFinalScreen extends StatefulWidget {
  const OnboardingFinalScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingFinalScreen> createState() => _OnboardingFinalScreenState();
}

class _OnboardingFinalScreenState extends State<OnboardingFinalScreen> {
  int _selectedPlan = 1; // 0 - yearly, 1 - monthly

  // IAP
  final Set<String> _kIds = {'tarot_yearly', 'tarot_monthly'};
  List<ProductDetails> _products = [];
  String _yearlyPrice = '';
  String _yearlyMonthPrice = '';
  String _monthlyPrice = '';
  String _monthlyMonthPrice = '';
  bool _iapLoading = true;

  @override
  void initState() {
    super.initState();
    // _loadProducts(); // Убираем отсюда!
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_iapLoading) {
      _loadProducts();
    }
  }

  Future<void> _loadProducts() async {
    print('[OnboardingFinalScreen] _loadProducts called');
    // Заглушка: возвращаем статичные цены, чтобы не падало
    print('[OnboardingFinalScreen] before setState');
    setState(() {
      _yearlyPrice = AppLocalizations.of(context)!.onboarding_final_screen_yearly_price;
      _yearlyMonthPrice = AppLocalizations.of(context)!.onboarding_final_screen_yearly_month_price;
      _monthlyPrice = AppLocalizations.of(context)!.onboarding_final_screen_monthly_price;
      _monthlyMonthPrice = AppLocalizations.of(context)!.onboarding_final_screen_monthly_month_price;
      _iapLoading = false;
      print('[OnboardingFinalScreen] inside setState, _iapLoading = false');
    });
    // Для реального IAP:
    // final response = await InAppPurchase.instance.queryProductDetails(_kIds);
    // ProductDetails? yearly;
    // ProductDetails? monthly;
    // for (final p in response.productDetails) {
    //   if (p.id == 'tarot_yearly') yearly = p;
    //   if (p.id == 'tarot_monthly') monthly = p;
    // }
    // setState(() {
    //   _yearlyPrice = yearly?.price ?? '';
    //   _yearlyMonthPrice = yearly != null ? _getPerMonth(yearly) : '';
    //   _monthlyPrice = monthly?.price ?? '';
    //   _monthlyMonthPrice = monthly?.price ?? '';
    //   _iapLoading = false;
    // });
  }

  String _getPerMonth(ProductDetails yearly) {
    // Попробуем вычислить цену за месяц
    try {
      final priceNum = double.tryParse(yearly.rawPrice.toString());
      if (priceNum != null) {
        final perMonth = priceNum / 12;
        final currency = yearly.currencyCode;
        return '${yearly.price.replaceAll(RegExp(r'[0-9.,]+'), perMonth.toStringAsFixed(2))}/mo';
      }
    } catch (_) {}
    return '';
  }

  Future<void> _onContinueWithAds() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('onboarding_complete', true);
    if (mounted) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const MainScreen()),
      );
    }
  }

  Future<void> _onBuy() async {
    // TODO: Реализовать покупку через in_app_purchase
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('onboarding_complete', true);
    final plan = _selectedPlan == 0 ? AppLocalizations.of(context)!.onboarding_final_screen_yearly_plan : AppLocalizations.of(context)!.onboarding_final_screen_free_trial;
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(AppLocalizations.of(context)!.onboarding_final_screen_purchase_title),
        content: Text(AppLocalizations.of(context)!.onboarding_final_screen_test_stub_message(plan)),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (_) => const MainScreen()),
              );
            },
            child: Text(AppLocalizations.of(context)!.onboarding_final_screen_ok_button),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final langCode = Localizations.localeOf(context).toLanguageTag();
    final loc = AppLocalizations.of(context)!;
    final accentColor = const Color(0xFFDBC195);
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/onboarding-4.png',
              fit: BoxFit.cover,
            ),
          ),
          if (_iapLoading)
            const Center(child: CircularProgressIndicator()),
          if (!_iapLoading)
            Positioned.fill(
              child: SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.08),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(height: 64),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            loc.onboarding_final_title,
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
                          price: _yearlyPrice,
                          subPrice: _yearlyMonthPrice,
                          onTap: () => setState(() => _selectedPlan = 0),
                          langCode: langCode,
                        ),
                        const SizedBox(height: 18),
                        _buildPlanOption(
                          selected: _selectedPlan == 1,
                          title: loc.onboarding_final_trial,
                          price: _monthlyPrice,
                          subPrice: _monthlyMonthPrice,
                          onTap: () => setState(() => _selectedPlan = 1),
                          langCode: langCode,
                        ),
                        const SizedBox(height: 18),
                        Text(
                          loc.onboarding_final_note,
                          style: bodyStyleForLang(langCode, 12, color: Colors.white.withOpacity(0.8)),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: _onBuy,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: accentColor,
                            foregroundColor: Colors.black,
                            minimumSize: Size(double.infinity, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                            ),
                            shadowColor: accentColor.withOpacity(0.5),
                            elevation: 16,
                          ),
                          child: Text(
                            _selectedPlan == 0 ? loc.onboarding_final_choose_yearly : loc.onboarding_final_choose_trial,
                            style: headingStyleForLang(langCode, 17, color: Colors.black),
                          ),
                        ),
                        const SizedBox(height: 18),
                        Text(
                          loc.onboarding_final_or,
                          style: bodyStyleForLang(langCode, 14, color: Colors.white.withOpacity(0.8)),
                        ),
                        const SizedBox(height: 12),
                        GestureDetector(
                          onTap: _onContinueWithAds,
                          child: Text(
                            loc.onboarding_final_continue_ads,
                            style: headingStyleForLang(langCode, 20, color: Colors.white),
                          ),
                        ),
                        const SizedBox(height: 24),
                        Padding(
                          padding: EdgeInsets.only(bottom: 16),
                          child: Text(
                            AppLocalizations.of(context)!.disclaimer_text,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 9,
                              color: Colors.white60,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
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
    String? badge,
    required String price,
    required String subPrice,
    required VoidCallback onTap,
    required String langCode,
  }) {
    final accentColor = const Color(0xFFDBC195);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 18),
        decoration: BoxDecoration(
          color: selected ? Colors.white.withOpacity(0.13) : Colors.transparent,
          borderRadius: BorderRadius.circular(24),
          border: Border.all(color: Colors.white, width: 1.2),
        ),
        child: Row(
          children: [
            Icon(
              selected ? Icons.radio_button_checked : Icons.radio_button_off,
              color: accentColor,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        title,
                        style: headingStyleForLang(langCode, 18, color: Colors.white),
                      ),
                      if (badge != null) ...[
                        const SizedBox(width: 8),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                          decoration: BoxDecoration(
                            color: accentColor,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            badge,
                            style: bodyStyleForLang(langCode, 13, color: Colors.black, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ],
                  ),
                  const SizedBox(height: 6),
                  Text(
                    price,
                    style: bodyStyleForLang(langCode, 15, color: Colors.white),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 12),
            Text(
              subPrice,
              style: bodyStyleForLang(langCode, 15, color: Colors.white.withOpacity(0.8)),
            ),
          ],
        ),
      ),
    );
  }
} 