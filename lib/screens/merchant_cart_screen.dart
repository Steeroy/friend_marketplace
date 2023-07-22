import 'package:flutter/material.dart';

import '../components/commons.dart';

class MerchantCartScreen extends StatefulWidget {
  const MerchantCartScreen({super.key});

  @override
  State<MerchantCartScreen> createState() => _MerchantCartScreenState();
}

class _MerchantCartScreenState extends State<MerchantCartScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: const Center(child: Text("Cart Page")),
      bottomNavigationBar: CustomMerchantBottomNavigationBar(
        currentIndex: 3,
        onTap: (index) {
          if (index == 0) {
            Navigator.pushReplacementNamed(context, '/merchant-home');
          } else if (index == 1) {
            Navigator.pushReplacementNamed(context, '/merchant-scanner-screen');
          } else if (index == 2) {
            Navigator.pushReplacementNamed(context, '/merchant-account-screen');
          } else if (index == 3) {
            Navigator.pushReplacementNamed(context, '/merchant-cart-screen');
          } else if (index == 4) {
            Navigator.pushReplacementNamed(context, '/merchant-chat-screen');
          }
        },
      ),
    ));
  }
}
