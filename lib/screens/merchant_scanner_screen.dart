import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../components/commons.dart';
import '../constants/global_variables.dart';
import '../models/merchant_item_model.dart';
import '../models/merchant_scanned_item_model.dart';

class MerchantScannerScreen extends StatefulWidget {
  const MerchantScannerScreen({super.key});

  @override
  State<MerchantScannerScreen> createState() => _MerchantScannerScreenState();
}

class _MerchantScannerScreenState extends State<MerchantScannerScreen> {
  DateTime now = DateTime.now();
  double _totalRevenue = 26.99;

  final List<MerchantScannedItem> items = [
    MerchantScannedItem(
        MerchantItem(
            'assets/images/sunfoild_oil.png',
            "Sunfoil Pure Sunflower Oil",
            "Cooking Oil",
            36.99,
            "750 ml",
            "Sunflower 750ml: Pure and versatile cooking oil, perfect for enhancing flavors in your favorite recipes.",
            25),
        DateTime.now()),
    MerchantScannedItem(
        MerchantItem(
            'assets/images/sunfoild_oil.png',
            "Sunfoil Pure Sunflower Oil",
            "Cooking Oil",
            36.99,
            "750 ml",
            "Sunflower 750ml: Pure and versatile cooking oil, perfect for enhancing flavors in your favorite recipes.",
            25),
        DateTime.now()),
    MerchantScannedItem(
        MerchantItem(
            'assets/images/sunfoild_oil.png',
            "Sunfoil Pure Sunflower Oil",
            "Cooking Oil",
            36.99,
            "750 ml",
            "Sunflower 750ml: Pure and versatile cooking oil, perfect for enhancing flavors in your favorite recipes.",
            25),
        DateTime.now()),
    MerchantScannedItem(
        MerchantItem(
            'assets/images/sunfoild_oil.png',
            "Sunfoil Pure Sunflower Oil",
            "Cooking Oil",
            36.99,
            "750 ml",
            "Sunflower 750ml: Pure and versatile cooking oil, perfect for enhancing flavors in your favorite recipes.",
            25),
        DateTime.now()),
    MerchantScannedItem(
        MerchantItem(
            'assets/images/sunfoild_oil.png',
            "Sunfoil Pure Sunflower Oil",
            "Cooking Oil",
            36.99,
            "750 ml",
            "Sunflower 750ml: Pure and versatile cooking oil, perfect for enhancing flavors in your favorite recipes.",
            25),
        DateTime.now()),
    MerchantScannedItem(
        MerchantItem(
            'assets/images/sunfoild_oil.png',
            "Sunfoil Pure Sunflower Oil",
            "Cooking Oil",
            36.99,
            "750 ml",
            "Sunflower 750ml: Pure and versatile cooking oil, perfect for enhancing flavors in your favorite recipes.",
            25),
        DateTime.now()),
    MerchantScannedItem(
        MerchantItem(
            'assets/images/sunfoild_oil.png',
            "Sunfoil Pure Sunflower Oil",
            "Cooking Oil",
            36.99,
            "750 ml",
            "Sunflower 750ml: Pure and versatile cooking oil, perfect for enhancing flavors in your favorite recipes.",
            25),
        DateTime.now()),
    MerchantScannedItem(
        MerchantItem(
            'assets/images/sunfoild_oil.png',
            "Sunfoil Pure Sunflower Oil",
            "Cooking Oil",
            36.99,
            "750 ml",
            "Sunflower 750ml: Pure and versatile cooking oil, perfect for enhancing flavors in your favorite recipes.",
            25),
        DateTime.now()),
    MerchantScannedItem(
        MerchantItem(
            'assets/images/sunfoild_oil.png',
            "Sunfoil Pure Sunflower Oil",
            "Cooking Oil",
            36.99,
            "750 ml",
            "Sunflower 750ml: Pure and versatile cooking oil, perfect for enhancing flavors in your favorite recipes.",
            25),
        DateTime.now()),
    MerchantScannedItem(
        MerchantItem(
            'assets/images/sunfoild_oil.png',
            "Sunfoil Pure Sunflower Oil",
            "Cooking Oil",
            36.99,
            "750 ml",
            "Sunflower 750ml: Pure and versatile cooking oil, perfect for enhancing flavors in your favorite recipes.",
            25),
        DateTime.now()),
    MerchantScannedItem(
        MerchantItem(
            'assets/images/sunfoild_oil.png',
            "Sunfoil Pure Sunflower Oil",
            "Cooking Oil",
            36.99,
            "750 ml",
            "Sunflower 750ml: Pure and versatile cooking oil, perfect for enhancing flavors in your favorite recipes.",
            25),
        DateTime.now()),
    MerchantScannedItem(
        MerchantItem(
            'assets/images/sunfoild_oil.png',
            "Sunfoil Pure Sunflower Oil",
            "Cooking Oil",
            36.99,
            "750 ml",
            "Sunflower 750ml: Pure and versatile cooking oil, perfect for enhancing flavors in your favorite recipes.",
            25),
        DateTime.now()),
    MerchantScannedItem(
        MerchantItem(
            'assets/images/sunfoild_oil.png',
            "Sunfoil Pure Sunflower Oil",
            "Cooking Oil",
            36.99,
            "750 ml",
            "Sunflower 750ml: Pure and versatile cooking oil, perfect for enhancing flavors in your favorite recipes.",
            25),
        DateTime.now()),
  ];

  void _selectedDate() async {
    final DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: now,
        firstDate: DateTime(2020),
        lastDate: DateTime(2025));

    if (pickedDate != null && pickedDate != now) {
      setState(() {
        now = pickedDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat('d MMMM y').format(now);

    return SafeArea(
        child: Scaffold(
      body: Container(
        margin: const EdgeInsets.only(left: 24, top: 48, right: 24, bottom: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    "Barcode Scanner",
                    style: GoogleFonts.nunito(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: GlobalVariables.HeadingText),
                  ),
                ),
                const SizedBox(
                  height: 28,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    PrimaryTextButton(
                      height: 36,
                      width: 140,
                      type: "primary",
                      padding: 20,
                      text: "Scan",
                      fontSize: 14,
                      onPressed: () {},
                    ),
                    PrimaryTextButton(
                      height: 36,
                      width: 140,
                      type: "secondary",
                      padding: 20,
                      text: "Manual Entry",
                      fontSize: 14,
                      onPressed: () {},
                    )
                  ],
                ),
                const SizedBox(
                  height: 18,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Goods sold on:",
                      style: GoogleFonts.nunito(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: GlobalVariables.HeadingText),
                    ),
                    TextButton(
                        onPressed: _selectedDate,
                        child: Text(
                          formattedDate,
                          style: GoogleFonts.nunito(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: GlobalVariables.PrimaryColor),
                        ))
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
              ],
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: items.length,
                    itemBuilder: ((context, index) {
                      return Padding(
                        padding: EdgeInsets.only(top: index == 0 ? 0 : 16),
                        child: ScannerItemRow(
                          scannedItem: items[index],
                        ),
                      );
                    }))),
            Container(
              width: double.infinity,
              height: 64,
              padding: const EdgeInsets.symmetric(horizontal: 24),
              decoration: const BoxDecoration(
                  color: GlobalVariables.TextBoxBg,
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Total",
                    style: GoogleFonts.nunito(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: GlobalVariables.HeadingText),
                  ),
                  Text(
                    "R$_totalRevenue",
                    style: GoogleFonts.nunito(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: GlobalVariables.HeadingText),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: CustomMerchantBottomNavigationBar(
        currentIndex: 1,
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
