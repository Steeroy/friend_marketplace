import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/mi.dart';
import 'package:iconify_flutter/icons/uil.dart';

import '../components/commons.dart';
import '../constants/global_variables.dart';

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
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 48),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                  child: Container(
                width: 176,
                height: 176,
                decoration: const BoxDecoration(
                    color: GlobalVariables.PrimaryColor,
                    shape: BoxShape.circle),
                child: const Center(
                  child: SizedBox(
                    width: 160,
                    height: 160,
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage:
                          AssetImage('assets/images/super-clean-logo.png'),
                    ),
                  ),
                ),
              )),
              const SizedBox(
                height: 18,
              ),
              Center(
                child: Text(
                  "Super Clean",
                  style: GoogleFonts.nunito(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: GlobalVariables.HeadingText),
                ),
              ),
              const SizedBox(
                height: 64,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/supplier-edit-profile-screen');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Iconify(
                      Mi.edit_alt,
                      size: 24,
                      color: GlobalVariables.SubHeadingText,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Edit Profile",
                      style: GoogleFonts.nunito(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: GlobalVariables.HeadingText),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Iconify(
                      Uil.signout,
                      size: 24,
                      color: GlobalVariables.SubHeadingText,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Log Out",
                      style: GoogleFonts.nunito(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: GlobalVariables.HeadingText),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
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
