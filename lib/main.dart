import 'package:flutter/material.dart';
import 'package:friends_market/screens/get_started_screen.dart';
import 'package:friends_market/screens/login_screen.dart';
import 'package:friends_market/screens/merchant_home.dart';
import 'package:friends_market/screens/register_page.dart';
import 'package:friends_market/screens/splash_screen.dart';
import 'package:friends_market/screens/supplier_account.dart';
import 'package:friends_market/screens/supplier_dashboard.dart';
import 'package:friends_market/screens/supplier_home.dart';
import 'package:friends_market/screens/supplier_product_screen.dart';

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
        '/supplier-home': (context) => const SupplierHome(),
        '/supplier-dashboard': (context) => const SupplierDashboardScreen(),
        '/supplier-account': (context) => const SupplierAccountScreen(),
        '/supplier-product-screen': (context) => const SupplierProductScreen(),
      },
    );
  }
}
