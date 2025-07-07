import 'package:flutter/material.dart';
import 'package:tarot_ai/l10n/app_localizations.dart';
import 'package:tarot_ai/utils/font_utils.dart';
import 'main_screen.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tarot_ai/services/purchase_service.dart';

class OnboardingFinalScreen extends StatefulWidget {
  const OnboardingFinalScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingFinalScreen> createState() => _OnboardingFinalScreenState();
}

class _OnboardingFinalScreenState extends State<OnboardingFinalScreen> {
  int _selectedPlan = 1; // 0 - yearly, 1 - monthly
  late PurchaseService _purchaseService;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _purchaseService = PurchaseService();
    _purchaseService.addListener(_onPurchaseServiceUpdate);
    
    // Добавляем отладочную информацию
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _debugProducts();
    });
  }

  @override
  void dispose() {
    _purchaseService.removeListener(_onPurchaseServiceUpdate);
    super.dispose();
  }

  void _onPurchaseServiceUpdate() {
    if (mounted) {
      setState(() {
        _isLoading = _purchaseService.isLoading;
      });
      
      // Если покупка успешна, переходим на главный экран
      if (_purchaseService.isSubscribed) {
        _completeOnboarding();
      }
      
      // Показываем ошибку, если есть
      if (_purchaseService.errorMessage != null) {
        _showErrorDialog(_purchaseService.errorMessage!);
      }
    }
  }

  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Ошибка'),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('OK'),
          ),
        ],
      ),
    );
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
    setState(() {
      _isLoading = true;
    });

    try {
      final productId = _selectedPlan == 0 ? 'tarot_ai_yearly' : 'tarot_ai_monthly';
      final success = await _purchaseService.purchaseSubscription(productId);
      
      if (!success) {
        setState(() {
          _isLoading = false;
        });
      }
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
      _showErrorDialog('Ошибка покупки: $e');
    }
  }

  Future<void> _completeOnboarding() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('onboarding_complete', true);
    if (mounted) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const MainScreen()),
      );
    }
  }

  String _getYearlyPrice() {
    return _purchaseService.getFormattedPrice('tarot_ai_yearly');
  }

  String _getYearlySubPrice() {
    final monthlyPrice = _purchaseService.getYearlyMonthlyPrice();
    return monthlyPrice.isNotEmpty ? '$monthlyPrice/mo' : '';
  }

  String _getMonthlyPrice() {
    return _purchaseService.getFormattedPrice('tarot_ai_monthly');
  }

  String _getMonthlySubPrice() {
    return _purchaseService.getFormattedPrice('tarot_ai_monthly');
  }

  void _debugProducts() {
    print('[OnboardingFinalScreen] Debug products:');
    print('[OnboardingFinalScreen] Monthly product: ${_purchaseService.monthlyProduct?.id} - ${_purchaseService.monthlyProduct?.price}');
    print('[OnboardingFinalScreen] Yearly product: ${_purchaseService.yearlyProduct?.id} - ${_purchaseService.yearlyProduct?.price}');
    print('[OnboardingFinalScreen] Store available: ${_purchaseService.isAvailable}');
    print('[OnboardingFinalScreen] Loading: ${_purchaseService.isLoading}');
    print('[OnboardingFinalScreen] Error: ${_purchaseService.errorMessage}');
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
          if (_isLoading)
            const Center(child: CircularProgressIndicator()),
          if (!_isLoading)
            Positioned.fill(
              child: SafeArea(
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.08),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: size.height - MediaQuery.of(context).padding.top - MediaQuery.of(context).padding.bottom,
                    ),
                    child: IntrinsicHeight(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(height: size.height * 0.04),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              loc.onboarding_final_title,
                              style: headingStyleForLang(langCode, size.width * 0.08, color: accentColor),
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            loc.onboarding_final_subtitle,
                            style: bodyStyleForLang(langCode, 16, color: Colors.white),
                            textAlign: TextAlign.left,
                          ),
                          const SizedBox(height: 16),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/icons/no_ads.png', width: 22, height: 22),
                                    const SizedBox(width: 8),
                                    Expanded(
                                      child: Text(
                                        loc.onboarding_final_benefits.split('\n')[0],
                                        style: bodyStyleForLang(langCode, 14, color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/icons/unlimited_spreads.png', width: 22, height: 22),
                                    const SizedBox(width: 8),
                                    Expanded(
                                      child: Text(
                                        loc.onboarding_final_benefits.split('\n')[1],
                                        style: bodyStyleForLang(langCode, 14, color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/icons/unlimited_learning.png', width: 22, height: 22),
                                    const SizedBox(width: 8),
                                    Expanded(
                                      child: Text(
                                        loc.onboarding_final_benefits.split('\n')[2],
                                        style: bodyStyleForLang(langCode, 14, color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 16),
                          _buildPlanOption(
                            selected: _selectedPlan == 0,
                            title: loc.onboarding_final_yearly,
                            badge: loc.onboarding_final_badge,
                            price: _getYearlyPrice(),
                            subPrice: _getYearlySubPrice(),
                            onTap: () => setState(() => _selectedPlan = 0),
                            langCode: langCode,
                          ),
                          const SizedBox(height: 12),
                          _buildPlanOption(
                            selected: _selectedPlan == 1,
                            title: loc.onboarding_final_trial,
                            price: _getMonthlyPrice(),
                            subPrice: _getMonthlySubPrice(),
                            onTap: () => setState(() => _selectedPlan = 1),
                            langCode: langCode,
                          ),
                          const SizedBox(height: 12),
                          Text(
                            loc.onboarding_final_note,
                            style: bodyStyleForLang(langCode, 11, color: Colors.white.withOpacity(0.8)),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 16),
                          ElevatedButton(
                            onPressed: _onBuy,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: accentColor,
                              foregroundColor: Colors.black,
                              minimumSize: Size(double.infinity, 48),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24),
                              ),
                              shadowColor: accentColor.withOpacity(0.5),
                              elevation: 16,
                            ),
                            child: Text(
                              _selectedPlan == 0 ? loc.onboarding_final_choose_yearly : loc.onboarding_final_choose_trial,
                              style: headingStyleForLang(langCode, 16, color: Colors.black),
                            ),
                          ),
                          const SizedBox(height: 12),
                          Text(
                            loc.onboarding_final_or,
                            style: bodyStyleForLang(langCode, 13, color: Colors.white.withOpacity(0.8)),
                          ),
                          const SizedBox(height: 8),
                          GestureDetector(
                            onTap: _onContinueWithAds,
                            child: Text(
                              loc.onboarding_final_continue_ads,
                              style: headingStyleForLang(langCode, 18, color: Colors.white),
                            ),
                          ),
                          const SizedBox(height: 16),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: Text(
                              AppLocalizations.of(context)!.disclaimer_text,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 8,
                                color: Colors.white60,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          SizedBox(height: size.height * 0.02),
                        ],
                      ),
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
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
        decoration: BoxDecoration(
          color: selected ? Colors.white.withOpacity(0.13) : Colors.transparent,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.white, width: 1.2),
        ),
        child: Row(
          children: [
            Icon(
              selected ? Icons.radio_button_checked : Icons.radio_button_off,
              color: accentColor,
              size: 20,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          title,
                          style: headingStyleForLang(langCode, 16, color: Colors.white),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      if (badge != null) ...[
                        const SizedBox(width: 6),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                          decoration: BoxDecoration(
                            color: accentColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            badge,
                            style: bodyStyleForLang(langCode, 11, color: Colors.black, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text(
                    price,
                    style: bodyStyleForLang(langCode, 14, color: Colors.white),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 10),
            Text(
              subPrice,
              style: bodyStyleForLang(langCode, 13, color: Colors.white.withOpacity(0.8)),
            ),
          ],
        ),
      ),
    );
  }
} 