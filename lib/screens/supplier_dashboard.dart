import 'package:flutter/material.dart';

import '../components/commons.dart';

class SupplierDashboardScreen extends StatefulWidget {
  const SupplierDashboardScreen({super.key});

  @override
  State<SupplierDashboardScreen> createState() =>
      _SupplierDashboardScreenState();
}

class _SupplierDashboardScreenState extends State<SupplierDashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: const Center(
        child: Text("Dashboard Page"),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: 1,
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
