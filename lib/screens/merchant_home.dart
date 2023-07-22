import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:iconify_flutter/iconify_flutter.dart";
import "package:iconify_flutter/icons/mdi.dart";
import "package:iconify_flutter/icons/ph.dart";
import "package:iconify_flutter/icons/icon_park_twotone.dart";
import "package:iconify_flutter/icons/fluent_emoji_high_contrast.dart";
import "package:iconify_flutter/icons/emojione_monotone.dart";
import "package:iconify_flutter/icons/ep.dart";
import "package:iconify_flutter/icons/ps.dart";
import "package:iconify_flutter/icons/gridicons.dart";

import "../components/commons.dart";
import "../constants/global_variables.dart";
import "../models/merchant_item_model.dart";
import "merchant_item_screen.dart";

class MerchantHome extends StatefulWidget {
  const MerchantHome({super.key});

  @override
  State<MerchantHome> createState() => _MerchantHomeState();
}

class _MerchantHomeState extends State<MerchantHome> {
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
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: GlobalVariables.NavBoxBg,
        title: Text(
          "Zolani Spaza",
          style: GoogleFonts.nunito(
              textStyle: const TextStyle(
                  fontSize: 24, color: GlobalVariables.HeadingText)),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  PrimaryRightIconButton(
                    onPressed: () {},
                    height: 40,
                    type: "primary",
                    padding: 12,
                    text: "Track Shipping",
                    fontSize: 14,
                    icon: const Iconify(
                      Mdi.truck_outline,
                      size: 18,
                      color: Colors.white,
                    ),
                  ),
                  PrimaryRightIconButton(
                    onPressed: () {},
                    height: 40,
                    type: "secondary",
                    padding: 12,
                    text: "Aggregations",
                    fontSize: 14,
                    icon: const Iconify(
                      Mdi.users_add_outline,
                      size: 18,
                      color: GlobalVariables.PrimaryColor,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 44,
              ),
              Text(
                "Categories",
                style: GoogleFonts.nunito(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: GlobalVariables.HeadingText),
              ),
              const SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CategoryItem(
                    onPressed: () {
                      Navigator.pushNamed(context, '/merchant-category-screen');
                    },
                    icon: const Iconify(
                      Ph.sun_bold,
                      size: 28,
                      color: GlobalVariables.SubHeadingText,
                    ),
                    title: "All",
                  ),
                  CategoryItem(
                    onPressed: () {},
                    icon: const Iconify(
                      IconParkTwotone.bottle_three,
                      size: 28,
                      color: GlobalVariables.SubHeadingText,
                    ),
                    title: "Cooking Oil",
                  ),
                  CategoryItem(
                    onPressed: () {},
                    icon: const Iconify(
                      FluentEmojiHighContrast.soap,
                      size: 28,
                      color: GlobalVariables.SubHeadingText,
                    ),
                    title: "Soap",
                  ),
                  CategoryItem(
                    onPressed: () {},
                    icon: const Iconify(
                      IconParkTwotone.bottle_two,
                      size: 28,
                      color: GlobalVariables.SubHeadingText,
                    ),
                    title: "Soft Drink",
                  ),
                ],
              ),
              const SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CategoryItem(
                    onPressed: () {},
                    icon: const Iconify(
                      EmojioneMonotone.pear,
                      size: 28,
                      color: GlobalVariables.SubHeadingText,
                    ),
                    title: "Fruit & Veg",
                  ),
                  CategoryItem(
                    onPressed: () {},
                    icon: const Iconify(
                      Ep.lollipop,
                      size: 28,
                      color: GlobalVariables.SubHeadingText,
                    ),
                    title: "Snacks",
                  ),
                  CategoryItem(
                    onPressed: () {},
                    icon: const Iconify(
                      Ps.milkshake,
                      size: 28,
                      color: GlobalVariables.SubHeadingText,
                    ),
                    title: "Dairy",
                  ),
                  CategoryItem(
                    onPressed: () {},
                    icon: const Iconify(
                      Gridicons.ellipsis,
                      size: 28,
                      color: GlobalVariables.SubHeadingText,
                    ),
                    title: "View More",
                  ),
                ],
              ),
              const SizedBox(
                height: 36,
              ),
              Text(
                "Top Ranking",
                style: GoogleFonts.nunito(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: GlobalVariables.HeadingText),
              ),
              const SizedBox(
                height: 18,
              ),
              SizedBox(
                height: 272,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(left: index == 0 ? 0 : 20),
                        child: MerchantProductItem(
                          onImagePressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MerchantItemScreen(
                                          item: items[index],
                                        )));
                          },
                          onTitlePressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MerchantItemScreen(
                                          item: items[index],
                                        )));
                          },
                          onCartPressed: () {},
                          item: items[index],
                        ),
                      );
                    }),
              ),
              const SizedBox(
                height: 36,
              ),
              Text(
                "New Arrivals",
                style: GoogleFonts.nunito(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: GlobalVariables.HeadingText),
              ),
              const SizedBox(
                height: 18,
              ),
              SizedBox(
                height: 252,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(left: index == 0 ? 0 : 20),
                        child: MerchantProductItem(
                          onImagePressed: () {},
                          onTitlePressed: () {},
                          onCartPressed: () {},
                          item: items[index],
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomMerchantBottomNavigationBar(
        currentIndex: 0,
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
