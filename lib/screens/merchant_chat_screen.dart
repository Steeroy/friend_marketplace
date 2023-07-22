import 'package:flutter/material.dart';

import '../components/commons.dart';

class MerchantChatScreen extends StatefulWidget {
  const MerchantChatScreen({super.key});

  @override
  State<MerchantChatScreen> createState() => _MerchantChatScreenState();
}

class _MerchantChatScreenState extends State<MerchantChatScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: const Center(child: Text("Chat Page")),
      bottomNavigationBar: CustomMerchantBottomNavigationBar(
        currentIndex: 4,
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
