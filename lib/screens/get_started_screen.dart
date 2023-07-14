import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/typcn.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/commons.dart';
import '../constants/global_variables.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Iconify(
                        Typcn.shopping_cart,
                        size: 64,
                        color: GlobalVariables.PrimaryColor,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        "FRIEND",
                        style: GoogleFonts.nunito(
                            fontSize: 48,
                            fontWeight: FontWeight.w500,
                            color: GlobalVariables.HeadingText,
                            letterSpacing: 4.5),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "MARKETPLACE",
                    style: GoogleFonts.nunito(
                        fontSize: 32,
                        fontWeight: FontWeight.w400,
                        color: GlobalVariables.HeadingText,
                        letterSpacing: 2.5),
                  )
                ],
              ),
              const SizedBox(
                height: 248,
              ),
              SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: PrimaryButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/usertype');
                    },
                    text: "Get Started",
                  )),
              const SizedBox(
                height: 124,
              )
            ],
          ),
        ),
      ),
    );
  }
}
