import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ph.dart';
import 'package:iconify_flutter/icons/mi.dart';
import 'package:iconify_flutter/icons/gg.dart';

import '../components/commons.dart';
import "../constants/global_variables.dart";

class SupplierHome extends StatefulWidget {
  const SupplierHome({super.key});

  @override
  State<SupplierHome> createState() => _SupplierHomeState();
}

class _SupplierHomeState extends State<SupplierHome> {
  final TextEditingController _searchQueryController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: GlobalVariables.NavBoxBg,
        title: Text(
          "Super Clean",
          style: GoogleFonts.nunito(
              textStyle: const TextStyle(
                  fontSize: 24, color: GlobalVariables.HeadingText)),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 24,
              ),
              Container(
                height: 52,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: GlobalVariables.TextBoxBg,
                    borderRadius: BorderRadius.circular(40)),
                child: TextField(
                  style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                    color: GlobalVariables.HeadingText,
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  )),
                  controller: _searchQueryController,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: const Iconify(
                        Ph.magnifying_glass,
                        size: 16,
                        color: GlobalVariables.HeadingText,
                      ),
                      onPressed: () {},
                    ),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    filled: false,
                    hintText: "Search...",
                    hintStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 28,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Listed Products",
                    style: GoogleFonts.nunito(
                        textStyle: const TextStyle(
                            fontSize: 22,
                            color: GlobalVariables.HeadingText,
                            fontWeight: FontWeight.w500)),
                  ),
                  Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                        color: GlobalVariables.TextBoxBg,
                        borderRadius: BorderRadius.circular(50)),
                    child: Center(
                      child: IconButton(
                          onPressed: () {},
                          icon: const Iconify(
                            Mi.filter,
                            size: 24,
                            color: GlobalVariables.HeadingText,
                          )),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32),
              SupplierItemCard(
                imageUrl: 'assets/images/superclean_1.png',
                itemName: "Cleaner and Degreaser Combo",
                itemPrice: "R300",
                itemDetails: () {
                  Navigator.pushNamed(context, '/supplier-product-screen');
                },
                itemEdit: () {},
              ),
              const SizedBox(
                height: 24,
              ),
              SupplierItemCard(
                imageUrl: 'assets/images/superclean_2.png',
                itemName: "Cleaner",
                itemPrice: "R86",
                itemDetails: () {},
                itemEdit: () {},
              ),
              const SizedBox(
                height: 64,
              ),
              SizedBox(
                width: double.infinity,
                height: 56,
                child: PrimaryIconButton(
                  text: "Add Product",
                  icon: const Iconify(
                    Gg.add,
                    size: 24,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: 0,
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
