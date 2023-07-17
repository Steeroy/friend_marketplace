import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ph.dart';
import 'package:iconify_flutter/icons/mi.dart';
import 'package:iconify_flutter/icons/tabler.dart';

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
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: GlobalVariables.HeadingText, width: 2),
                        borderRadius: BorderRadius.circular(16)),
                    child: Center(
                      child: Image.asset(
                        'assets/images/superclean_1.png',
                        width: 80,
                        height: 80,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 24,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                            onTap: () {},
                            child: Text(
                              "Cleaner and Degreaser Combo",
                              style: GoogleFonts.nunito(
                                  textStyle: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: GlobalVariables.PrimaryColor)),
                            )),
                        const SizedBox(
                          height: 4,
                        ),
                        Text("R300",
                            style: GoogleFonts.nunito(
                                textStyle: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: GlobalVariables.HeadingText))),
                        const SizedBox(
                          height: 4,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Iconify(
                                Mi.edit_alt,
                                size: 18,
                                color: GlobalVariables.SubHeadingText,
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Text(
                                "Edit",
                                style: GoogleFonts.nunito(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: GlobalVariables.HeadingText),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
