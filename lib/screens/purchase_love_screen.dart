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

  void _debugProducts() {
    print('[PurchaseLoveScreen] Debug products:');
    print('[PurchaseLoveScreen] Monthly product: ${_purchaseService.monthlyProduct?.id} - ${_purchaseService.monthlyProduct?.price}');
    print('[PurchaseLoveScreen] Yearly product: ${_purchaseService.yearlyProduct?.id} - ${_purchaseService.yearlyProduct?.price}');
    print('[PurchaseLoveScreen] Store available: ${_purchaseService.isAvailable}');
    print('[PurchaseLoveScreen] Loading: ${_purchaseService.isLoading}');
    print('[PurchaseLoveScreen] Error: ${_purchaseService.errorMessage}');
  }

  void _onPurchaseServiceUpdate() {
    if (mounted) {
      setState(() {
        _isLoading = _purchaseService.isLoading;
      });
      
      // Если покупка успешна, показываем диалог
      if (_purchaseService.isSubscribed) {
        _showSuccessDialog();
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

  void _showSuccessDialog() {
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

  @override
  void dispose() {
    _purchaseService.removeListener(_onPurchaseServiceUpdate);
    super.dispose();
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

  void _onRestorePurchases() async {
    setState(() {
      _isLoading = true;
    });

    try {
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
    } catch (e) {
      _showErrorDialog('Ошибка восстановления: $e');
    } finally {
      setState(() {
        _isLoading = false;
      });
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

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final langCode = Localizations.localeOf(context).toLanguageTag();
    final loc = AppLocalizations.of(context)!;
    final accentColor = const Color(0xFFDBC195);
    
    // Get real prices from purchase service
    final yearlyPrice = _getYearlyPrice();
    final yearlyMonthPrice = _getYearlySubPrice();
    final monthlyPrice = _getMonthlyPrice();
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
                              loc.purchase_love_screen_love_tariff_title,
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
                            price: yearlyPrice.isNotEmpty ? yearlyPrice : 'Loading...',
                            subPrice: yearlyMonthPrice.isNotEmpty ? '$yearlyMonthPrice/month' : '',
                            onTap: () => setState(() => _selectedPlan = 0),
                          ),
                          const SizedBox(height: 12),
                          _buildPlanOption(
                            selected: _selectedPlan == 1,
                            title: loc.onboarding_final_trial_month,
                            badge: loc.onboarding_final_badge,
                            price: monthlyPrice.isNotEmpty ? monthlyPrice : 'Loading...',
                            subPrice: monthlyMonthPrice.isNotEmpty ? '$monthlyMonthPrice/month' : '',
                            onTap: () => setState(() => _selectedPlan = 1),
                          ),
                          const SizedBox(height: 16),
                          if (_purchaseService.errorMessage != null)
                            Padding(
                              padding: const EdgeInsets.only(bottom: 12),
                              child: Text(
                                _purchaseService.errorMessage!,
                                style: const TextStyle(color: Colors.red, fontSize: 13),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ElevatedButton(
                            onPressed: _purchaseService.isAvailable ? _onBuy : null,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: accentColor,
                              foregroundColor: Colors.black,
                              minimumSize: Size(double.infinity, 48),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
                              shadowColor: accentColor.withOpacity(0.5),
                              elevation: 16,
                            ),
                            child: Text(
                              _selectedPlan == 0
                                  ? loc.onboarding_final_choose_yearly
                                  : loc.onboarding_final_choose_trial,
                              style: headingStyleForLang(langCode, 16, color: Colors.black),
                            ),
                          ),
                          const SizedBox(height: 12),
                          Text(
                            loc.onboarding_final_note,
                            style: bodyStyleForLang(langCode, 11, color: Colors.white.withOpacity(0.8)),
                            textAlign: TextAlign.center,
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
    required String badge,
    required String price,
    required String subPrice,
    required VoidCallback onTap,
  }) {
    final accentColor = const Color(0xFFDBC195);
    final langCode = Localizations.localeOf(context).toLanguageTag();
    
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(vertical: 2),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        decoration: BoxDecoration(
          color: selected ? Colors.white.withOpacity(0.13) : Colors.white.withOpacity(0.07),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: selected ? accentColor : Colors.white24, width: 1.5),
        ),
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 12),
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: selected ? accentColor : Colors.white38, width: 1.5),
                color: selected ? accentColor : Colors.transparent,
              ),
              child: selected
                  ? const Icon(Icons.check, color: Colors.black, size: 16)
                  : null,
            ),
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
                      const SizedBox(width: 8),
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
                  ),
                  const SizedBox(height: 4),
                  Text(
                    price, 
                    style: bodyStyleForLang(langCode, 14, color: Colors.white),
                  ),
                  if (subPrice.isNotEmpty)
                    Text(
                      subPrice, 
                      style: bodyStyleForLang(langCode, 13, color: Colors.white.withOpacity(0.8)),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
} 