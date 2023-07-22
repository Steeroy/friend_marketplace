import 'package:flutter/material.dart';
import 'package:friends_market/screens/get_started_screen.dart';
import 'package:friends_market/screens/login_screen.dart';
import 'package:friends_market/screens/merchant_account_screen.dart';
import 'package:friends_market/screens/merchant_cart_screen.dart';
import 'package:friends_market/screens/merchant_category_screen.dart';
import 'package:friends_market/screens/merchant_chat_screen.dart';
import 'package:friends_market/screens/merchant_home.dart';
import 'package:friends_market/screens/merchant_scanner_screen.dart';
import 'package:friends_market/screens/register_page.dart';
import 'package:friends_market/screens/splash_screen.dart';
import 'package:friends_market/screens/supplier_account.dart';
import 'package:friends_market/screens/supplier_add_product.dart';
import 'package:friends_market/screens/supplier_dashboard.dart';
import 'package:friends_market/screens/supplier_edit_profile.dart';
import 'package:friends_market/screens/supplier_home.dart';
import 'package:friends_market/screens/supplier_product_screen.dart';
import 'package:friends_market/screens/supplier_edit_product.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      routes: {
        '/get-started': (context) => const GetStartedScreen(),
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),
        '/merchant-home': (context) => const MerchantHome(),
        '/merchant-scanner-screen': (context) => const MerchantScannerScreen(),
        '/merchant-account-screen': (context) => const MerchantAccountScreen(),
        '/merchant-cart-screen': (context) => const MerchantCartScreen(),
        '/merchant-chat-screen': (context) => const MerchantChatScreen(),
        '/merchant-category-screen': (context) =>
            const MerchantCategoryScreen(),
        '/supplier-home': (context) => const SupplierHome(),
        '/supplier-dashboard': (context) => const SupplierDashboardScreen(),
        '/supplier-account': (context) => const SupplierAccountScreen(),
        '/supplier-product-screen': (context) => const SupplierProductScreen(),
        '/supplier-edit-product-screen': (context) =>
            const SupplierEditProductScreen(),
        '/supplier-add-product-screen': (context) =>
            const SupplierAddProductScreen(),
        '/supplier-edit-profile-screen': (context) =>
            const SupplierEditProfile(),
      },
    );
  }
}
