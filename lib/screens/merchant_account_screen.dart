import 'package:flutter/material.dart';

import '../components/commons.dart';

class MerchantAccountScreen extends StatefulWidget {
  const MerchantAccountScreen({super.key});

  @override
  State<MerchantAccountScreen> createState() => _MerchantAccountScreenState();
}

class _MerchantAccountScreenState extends State<MerchantAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: const Center(child: Text("Account Page")),
      bottomNavigationBar: CustomMerchantBottomNavigationBar(
        currentIndex: 2,
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
