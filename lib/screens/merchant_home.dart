import "package:flutter/material.dart";

class MerchantHome extends StatefulWidget {
  const MerchantHome({super.key});

  @override
  State<MerchantHome> createState() => _MerchantHomeState();
}

class _MerchantHomeState extends State<MerchantHome> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Merchant Home"),
    );
  }
}
