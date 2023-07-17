import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ic.dart';
import 'package:iconify_flutter/icons/mi.dart';

import '../components/commons.dart';
import '../constants/global_variables.dart';

class SupplierProductScreen extends StatelessWidget {
  const SupplierProductScreen({super.key});

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
                  Navigator.pushNamed(context, '/supplier-home');
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
                  'assets/images/superclean_1.png',
                  width: 180,
                  height: 180,
                ),
              ),
              const SizedBox(
                height: 28,
              ),
              Text(
                "Cleaner and Degreaser Combo",
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
                        text: 'Detergent',
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
                        text: '750ml',
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
                        text: 'R300',
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
                "Super Clean offers a powerful combo detergent degreaser and cleaner that tackles tough stains and grease effectively. With its advanced formula, it provides a deep clean and leaves surfaces spotless, making it a reliable choice for various cleaning tasks.",
                style: GoogleFonts.inter(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: GlobalVariables.HeadingText),
              ),
              const SizedBox(
                height: 32,
              ),
              SizedBox(
                width: double.infinity,
                height: 56,
                child: PrimaryIconRightButton(
                  text: "Edit Product",
                  icon: const Iconify(
                    Mi.edit_alt,
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
    ));
  }
}
