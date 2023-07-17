import 'package:flutter/material.dart';

import '../components/commons.dart';

class SupplierAccountScreen extends StatefulWidget {
  const SupplierAccountScreen({super.key});

  @override
  State<SupplierAccountScreen> createState() => _SupplierAccountScreenState();
}

class _SupplierAccountScreenState extends State<SupplierAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: const Center(
        child: Text("This is the account page"),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: 2,
        onTap: (index) {
          if (index == 0) {
            Navigator.pushReplacementNamed(context, '/supplier-home');
          } else if (index == 1) {
            Navigator.pushReplacementNamed(context, '/supplier-dashboard');
          } else if (index == 2) {
            Navigator.pushReplacementNamed(context, '/supplier-account');
          }
        },
      ),
    ));
  }
}
