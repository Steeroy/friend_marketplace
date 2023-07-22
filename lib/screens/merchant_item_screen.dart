import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ic.dart';
import 'package:iconify_flutter/icons/mdi.dart';

import '../components/commons.dart';
import '../constants/global_variables.dart';
import '../models/merchant_item_model.dart';

class MerchantItemScreen extends StatelessWidget {
  final MerchantItem item;
  const MerchantItemScreen({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 48),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/merchant-home');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Iconify(
                      Ic.baseline_home,
                      size: 22,
                      color: GlobalVariables.HeadingText,
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Text(
                      "Home",
                      style: GoogleFonts.nunito(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: GlobalVariables.HeadingText),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 36,
              ),
              Center(
                child: Image.asset(
                  item.imageUrl,
                  width: 180,
                  height: 180,
                ),
              ),
              const SizedBox(
                height: 28,
              ),
              Text(
                item.title,
                style: GoogleFonts.nunito(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                    color: GlobalVariables.HeadingText),
              ),
              const SizedBox(
                height: 16,
              ),
              RichText(
                  text: TextSpan(
                      style: DefaultTextStyle.of(context).style,
                      children: <TextSpan>[
                    TextSpan(
                      text: 'Category: ',
                      style: GoogleFonts.nunito(
                        decoration: TextDecoration.none,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: GlobalVariables.HeadingText,
                      ),
                    ),
                    TextSpan(
                        text: item.category,
                        style: GoogleFonts.nunito(
                          decoration: TextDecoration.none,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: GlobalVariables.HeadingText,
                        )),
                  ])),
              const SizedBox(
                height: 8,
              ),
              RichText(
                  text: TextSpan(
                      style: DefaultTextStyle.of(context).style,
                      children: <TextSpan>[
                    TextSpan(
                      text: 'Size: ',
                      style: GoogleFonts.nunito(
                        decoration: TextDecoration.none,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: GlobalVariables.HeadingText,
                      ),
                    ),
                    TextSpan(
                        text: item.size,
                        style: GoogleFonts.nunito(
                          decoration: TextDecoration.none,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: GlobalVariables.HeadingText,
                        )),
                  ])),
              const SizedBox(height: 8),
              RichText(
                  text: TextSpan(
                      style: DefaultTextStyle.of(context).style,
                      children: <TextSpan>[
                    TextSpan(
                      text: 'Price: ',
                      style: GoogleFonts.nunito(
                        decoration: TextDecoration.none,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: GlobalVariables.HeadingText,
                      ),
                    ),
                    TextSpan(
                        text: "R${item.price}",
                        style: GoogleFonts.nunito(
                          decoration: TextDecoration.none,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: GlobalVariables.HeadingText,
                        )),
                  ])),
              const SizedBox(
                height: 8,
              ),
              RichText(
                  text: TextSpan(
                      style: DefaultTextStyle.of(context).style,
                      children: <TextSpan>[
                    TextSpan(
                      text: 'MOQ: ',
                      style: GoogleFonts.nunito(
                        decoration: TextDecoration.none,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: GlobalVariables.HeadingText,
                      ),
                    ),
                    TextSpan(
                        text: "${item.moq}",
                        style: GoogleFonts.nunito(
                          decoration: TextDecoration.none,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: GlobalVariables.HeadingText,
                        )),
                  ])),
              const SizedBox(
                height: 16,
              ),
              Text(
                "Description",
                style: GoogleFonts.nunito(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: GlobalVariables.HeadingText),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                item.description,
                style: GoogleFonts.inter(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: GlobalVariables.HeadingText),
              ),
              const SizedBox(
                height: 32,
              ),
              PrimaryRightIconButton(
                height: 56,
                width: double.infinity,
                type: "primary",
                padding: 32,
                text: "Add To Cart",
                icon: const Iconify(
                  Mdi.cart_plus,
                  size: 24,
                  color: Colors.white,
                ),
                fontSize: 18,
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    ));
  }
}
