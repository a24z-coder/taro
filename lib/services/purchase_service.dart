import 'dart:async';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:in_app_purchase_android/in_app_purchase_android.dart';
import 'package:in_app_purchase_storekit/in_app_purchase_storekit.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PurchaseService extends ChangeNotifier {
  static final PurchaseService _instance = PurchaseService._internal();
  factory PurchaseService() => _instance;
  PurchaseService._internal();

  final InAppPurchase _inAppPurchase = InAppPurchase.instance;
  late StreamSubscription<List<PurchaseDetails>> _subscription;
  
  // Product IDs
  static const String _monthlySubscriptionId = 'tarot_ai_monthly';
  static const String _yearlySubscriptionId = 'tarot_ai_yearly';
  
  // Product details
  ProductDetails? _monthlyProduct;
  ProductDetails? _yearlyProduct;
  
  // Purchase status
  bool _isAvailable = false;
  bool _isLoading = false;
  String? _errorMessage;
  
  // User subscription status
  bool _isSubscribed = false;
  DateTime? _subscriptionExpiryDate;
  
  // Getters
  bool get isAvailable => _isAvailable;
  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;
  bool get isSubscribed => _isSubscribed;
  DateTime? get subscriptionExpiryDate => _subscriptionExpiryDate;
  ProductDetails? get monthlyProduct => _monthlyProduct;
  ProductDetails? get yearlyProduct => _yearlyProduct;
  
  // Initialize the service
  Future<void> initialize() async {
    debugPrint('[PurchaseService] Initializing...');
    
    try {
      _isAvailable = await _inAppPurchase.isAvailable();
      debugPrint('[PurchaseService] Store available: $_isAvailable');
      
      if (!_isAvailable) {
        _errorMessage = 'Store not available';
        notifyListeners();
        return;
      }
      
      // Load user subscription status
      await _loadSubscriptionStatus();
      
      // Listen to purchase updates
      _subscription = _inAppPurchase.purchaseStream.listen(
        _onPurchaseUpdate,
        onDone: () => debugPrint('[PurchaseService] Purchase stream done'),
        onError: (error) => debugPrint('[PurchaseService] Purchase stream error: $error'),
      );
      
      // Load products
      await _loadProducts();
      
    } catch (e) {
      debugPrint('[PurchaseService] Initialization error: $e');
      _errorMessage = 'Failed to initialize: $e';
      notifyListeners();
    }
  }
  
  // Load available products
  Future<void> _loadProducts() async {
    debugPrint('[PurchaseService] Loading products...');
    _isLoading = true;
    notifyListeners();
    
    try {
      final Set<String> productIds = {
        _monthlySubscriptionId,
        _yearlySubscriptionId,
      };
      
      final ProductDetailsResponse response = await _inAppPurchase.queryProductDetails(productIds);
      
      if (response.notFoundIDs.isNotEmpty) {
        debugPrint('[PurchaseService] Products not found: ${response.notFoundIDs}');
      }
      
      if (response.error != null) {
        debugPrint('[PurchaseService] Query error: ${response.error}');
        _errorMessage = 'Failed to load products: ${response.error}';
      }
      
      for (final ProductDetails product in response.productDetails) {
        if (product.id == _monthlySubscriptionId) {
          _monthlyProduct = product;
          debugPrint('[PurchaseService] Monthly product loaded: ${product.title} - ${product.rawPrice}');
        } else if (product.id == _yearlySubscriptionId) {
          _yearlyProduct = product;
          debugPrint('[PurchaseService] Yearly product loaded: ${product.title} - ${product.rawPrice}');
        }
      }
      
    } catch (e) {
      debugPrint('[PurchaseService] Load products error: $e');
      _errorMessage = 'Failed to load products: $e';
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
  
  // Handle purchase updates
  void _onPurchaseUpdate(List<PurchaseDetails> purchaseDetailsList) {
    debugPrint('[PurchaseService] Purchase update: ${purchaseDetailsList.length} purchases');
    
    for (final PurchaseDetails purchaseDetails in purchaseDetailsList) {
      debugPrint('[PurchaseService] Processing purchase: ${purchaseDetails.productID} - ${purchaseDetails.status}');
      
      if (purchaseDetails.status == PurchaseStatus.pending) {
        debugPrint('[PurchaseService] Purchase pending');
      } else if (purchaseDetails.status == PurchaseStatus.purchased ||
                 purchaseDetails.status == PurchaseStatus.restored) {
        _handleSuccessfulPurchase(purchaseDetails);
      } else if (purchaseDetails.status == PurchaseStatus.error) {
        debugPrint('[PurchaseService] Purchase error: ${purchaseDetails.error}');
        _errorMessage = 'Purchase failed: ${purchaseDetails.error?.message}';
        notifyListeners();
      } else if (purchaseDetails.status == PurchaseStatus.canceled) {
        debugPrint('[PurchaseService] Purchase canceled');
      }
      
      // Complete the purchase
      if (purchaseDetails.pendingCompletePurchase) {
        _inAppPurchase.completePurchase(purchaseDetails);
      }
    }
  }
  
  // Handle successful purchase
  void _handleSuccessfulPurchase(PurchaseDetails purchaseDetails) async {
    debugPrint('[PurchaseService] Handling successful purchase: ${purchaseDetails.productID}');
    
    try {
      // Verify purchase (implement your verification logic here)
      bool isValid = await _verifyPurchase(purchaseDetails);
      
      if (isValid) {
        // Save subscription status
        await _saveSubscriptionStatus(purchaseDetails);
        
        // Update local state
        _isSubscribed = true;
        _errorMessage = null;
        
        debugPrint('[PurchaseService] Purchase verified and saved');
        debugPrint('[PurchaseService] User is now subscribed: $_isSubscribed');
        debugPrint('[PurchaseService] Subscription expires: $_subscriptionExpiryDate');
      } else {
        debugPrint('[PurchaseService] Purchase verification failed');
        _errorMessage = 'Purchase verification failed';
      }
    } catch (e) {
      debugPrint('[PurchaseService] Handle purchase error: $e');
      _errorMessage = 'Failed to process purchase: $e';
    }
    
    notifyListeners();
  }
  
  // Verify purchase (implement your server-side verification here)
  Future<bool> _verifyPurchase(PurchaseDetails purchaseDetails) async {
    // For now, we'll trust the store verification
    // In production, you should verify with your server
    debugPrint('[PurchaseService] Verifying purchase...');
    
    if (Platform.isAndroid) {
      // Android verification
      final GooglePlayPurchaseDetails googlePlayPurchaseDetails = purchaseDetails as GooglePlayPurchaseDetails;
      debugPrint('[PurchaseService] Android purchase: ${googlePlayPurchaseDetails.billingClientPurchase.purchaseToken}');
    } else if (Platform.isIOS) {
      // iOS verification
      final AppStorePurchaseDetails appStorePurchaseDetails = purchaseDetails as AppStorePurchaseDetails;
      debugPrint('[PurchaseService] iOS purchase: ${appStorePurchaseDetails.skPaymentTransaction.transactionIdentifier}');
    }
    
    // TODO: Implement server-side verification
    return true;
  }
  
  // Save subscription status
  Future<void> _saveSubscriptionStatus(PurchaseDetails purchaseDetails) async {
    final prefs = await SharedPreferences.getInstance();
    
    // Calculate expiry date based on product
    DateTime expiryDate;
    if (purchaseDetails.productID == _monthlySubscriptionId) {
      expiryDate = DateTime.now().add(const Duration(days: 30));
    } else if (purchaseDetails.productID == _yearlySubscriptionId) {
      expiryDate = DateTime.now().add(const Duration(days: 365));
    } else {
      expiryDate = DateTime.now().add(const Duration(days: 30)); // Default
    }
    
    await prefs.setBool('is_subscribed', true);
    await prefs.setString('subscription_expiry', expiryDate.toIso8601String());
    await prefs.setString('subscription_product_id', purchaseDetails.productID);
    
    _subscriptionExpiryDate = expiryDate;
  }
  
  // Load subscription status
  Future<void> _loadSubscriptionStatus() async {
    final prefs = await SharedPreferences.getInstance();
    
    _isSubscribed = prefs.getBool('is_subscribed') ?? false;
    
    final expiryString = prefs.getString('subscription_expiry');
    if (expiryString != null) {
      _subscriptionExpiryDate = DateTime.parse(expiryString);
      
      // Check if subscription is expired
      if (_subscriptionExpiryDate!.isBefore(DateTime.now())) {
        _isSubscribed = false;
        await prefs.setBool('is_subscribed', false);
        debugPrint('[PurchaseService] Subscription expired');
      }
    }
    
    debugPrint('[PurchaseService] Subscription status: $_isSubscribed, expires: $_subscriptionExpiryDate');
  }
  
  // Purchase subscription
  Future<bool> purchaseSubscription(String productId) async {
    debugPrint('[PurchaseService] Purchasing: $productId');
    
    if (!_isAvailable) {
      _errorMessage = 'Store not available';
      notifyListeners();
      return false;
    }
    
    ProductDetails? product;
    if (productId == _monthlySubscriptionId) {
      product = _monthlyProduct;
    } else if (productId == _yearlySubscriptionId) {
      product = _yearlyProduct;
    }
    
    if (product == null) {
      _errorMessage = 'Product not available';
      notifyListeners();
      return false;
    }
    
    try {
      final PurchaseParam purchaseParam = PurchaseParam(productDetails: product);
      
      if (product.id == _monthlySubscriptionId || product.id == _yearlySubscriptionId) {
        await _inAppPurchase.buyNonConsumable(purchaseParam: purchaseParam);
      }
      
      return true;
    } catch (e) {
      debugPrint('[PurchaseService] Purchase error: $e');
      _errorMessage = 'Purchase failed: $e';
      notifyListeners();
      return false;
    }
  }
  
  // Restore purchases
  Future<void> restorePurchases() async {
    debugPrint('[PurchaseService] Restoring purchases...');
    
    try {
      await _inAppPurchase.restorePurchases();
    } catch (e) {
      debugPrint('[PurchaseService] Restore error: $e');
      _errorMessage = 'Restore failed: $e';
      notifyListeners();
    }
  }
  
  // Check if subscription is active
  bool isSubscriptionActive() {
    if (!_isSubscribed) return false;
    if (_subscriptionExpiryDate == null) return false;
    return _subscriptionExpiryDate!.isAfter(DateTime.now());
  }
  
  // Get formatted price for product
  String getFormattedPrice(String productId) {
    ProductDetails? product;
    if (productId == _monthlySubscriptionId) {
      product = _monthlyProduct;
    } else if (productId == _yearlySubscriptionId) {
      product = _yearlyProduct;
    }
    
    return product?.price ?? '';
  }
  
  // Get monthly price for yearly subscription
  String getYearlyMonthlyPrice() {
    if (_yearlyProduct == null) return '';
    try {
      // rawPrice может быть double или String, используем double
      final yearlyPrice = _yearlyProduct!.rawPrice is double
          ? _yearlyProduct!.rawPrice as double
          : double.tryParse(_yearlyProduct!.rawPrice.toString()) ?? 0.0;
      final monthlyPrice = yearlyPrice / 12;
      return monthlyPrice.toStringAsFixed(2);
    } catch (e) {
      return '';
    }
  }
  
  // Dispose
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
} 