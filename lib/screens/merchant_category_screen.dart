import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ic.dart';

import '../components/commons.dart';
import '../constants/global_variables.dart';
import '../models/merchant_item_model.dart';
import 'merchant_item_screen.dart';

class MerchantCategoryScreen extends StatefulWidget {
  const MerchantCategoryScreen({super.key});

  @override
  State<MerchantCategoryScreen> createState() => _MerchantCategoryScreenState();
}

class _MerchantCategoryScreenState extends State<MerchantCategoryScreen> {
  final List<MerchantItem> items = [
    MerchantItem(
        'assets/images/sunfoild_oil.png',
        "Sunfoil Pure Sunflower Oil",
        "Cooking Oil",
        36.99,
        "750 ml",
        "Sunflower 750ml: Pure and versatile cooking oil, perfect for enhancing flavors in your favorite recipes.",
        25),
    MerchantItem(
        'assets/images/sunfoild_oil.png',
        "Sunfoil Pure Sunflower Oil",
        "Cooking Oil",
        36.99,
        "750 ml",
        "Sunflower 750ml: Pure and versatile cooking oil, perfect for enhancing flavors in your favorite recipes.",
        25),
    MerchantItem(
        'assets/images/sunfoild_oil.png',
        "Sunfoil Pure Sunflower Oil",
        "Cooking Oil",
        36.99,
        "750 ml",
        "Sunflower 750ml: Pure and versatile cooking oil, perfect for enhancing flavors in your favorite recipes.",
        25),
    MerchantItem(
        'assets/images/sunfoild_oil.png',
        "Sunfoil Pure Sunflower Oil",
        "Cooking Oil",
        36.99,
        "750 ml",
        "Sunflower 750ml: Pure and versatile cooking oil, perfect for enhancing flavors in your favorite recipes.",
        25),
    MerchantItem(
        'assets/images/sunfoild_oil.png',
        "Sunfoil Pure Sunflower Oil",
        "Cooking Oil",
        36.99,
        "750 ml",
        "Sunflower 750ml: Pure and versatile cooking oil, perfect for enhancing flavors in your favorite recipes.",
        25),
    MerchantItem(
        'assets/images/sunfoild_oil.png',
        "Sunfoil Pure Sunflower Oil",
        "Cooking Oil",
        36.99,
        "750 ml",
        "Sunflower 750ml: Pure and versatile cooking oil, perfect for enhancing flavors in your favorite recipes.",
        25),
    MerchantItem(
        'assets/images/sunfoild_oil.png',
        "Sunfoil Pure Sunflower Oil",
        "Cooking Oil",
        36.99,
        "750 ml",
        "Sunflower 750ml: Pure and versatile cooking oil, perfect for enhancing flavors in your favorite recipes.",
        25),
    MerchantItem(
        'assets/images/sunfoild_oil.png',
        "Sunfoil Pure Sunflower Oil",
        "Cooking Oil",
        36.99,
        "750 ml",
        "Sunflower 750ml: Pure and versatile cooking oil, perfect for enhancing flavors in your favorite recipes.",
        25),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/merchant-home');
                },
                child: Container(
                  color: Colors.transparent,
                  child: const Iconify(
                    Ic.arrow_back,
                    size: 18,
                    color: GlobalVariables.HeadingText,
                  ),
                ),
              ),
            ),
            body: Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        "All",
                        style: GoogleFonts.nunito(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            color: GlobalVariables.HeadingText),
                      ),
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    Expanded(
                      child: GridView.builder(
                          itemCount: items.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  mainAxisSpacing: 20,
                                  childAspectRatio: 0.6,
                                  crossAxisSpacing: 20),
                          itemBuilder: (context, index) => MerchantProductItem(
                                onImagePressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              MerchantItemScreen(
                                                item: items[index],
                                              )));
                                },
                                onTitlePressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              MerchantItemScreen(
                                                item: items[index],
                                              )));
                                },
                                onCartPressed: () {},
                                item: items[index],
                              )),
                    )
                  ],
                ))));
  }
}
