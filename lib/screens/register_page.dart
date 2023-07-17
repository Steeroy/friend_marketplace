import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ep.dart';
import 'package:iconify_flutter/icons/ion.dart';

import '../components/commons.dart';
import '../constants/global_variables.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController businessNameController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController locationController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController roleController = TextEditingController();
  final TextEditingController registrationNumberController =
      TextEditingController();
  final _roleList = ["Merchant", "Supplier"];
  final _catalogueList = ["Detergent", "Rice", "Cooking Oil", "Soap"];
  String _selectedVal = "Merchant";
  String _catalogueSelectedVal = "Detergent";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 80,
              ),
              Text(
                "Create new account",
                style: GoogleFonts.nunito(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  color: GlobalVariables.HeadingText,
                ),
              ),
              const SizedBox(
                height: 52,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const LabelText(
                    text: "Full Name",
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                    height: 56,
                    child: CustomTextField(
                      type: 'text',
                      hintText: "Enter your full name",
                      controller: fullNameController,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const LabelText(
                    text: "Business Name",
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                    height: 56,
                    child: CustomTextField(
                      type: 'text',
                      hintText: "Enter your business name",
                      controller: businessNameController,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const LabelText(
                    text: "Type of user",
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  DropdownButtonFormField(
                    value: _selectedVal,
                    items: _roleList.map((e) {
                      return DropdownMenuItem(
                        value: e,
                        child: Text(e),
                      );
                    }).toList(),
                    onChanged: (val) {
                      setState(() {
                        _selectedVal = val as String;
                      });
                    },
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: GlobalVariables.TextBoxBg,
                      hintStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    style: GoogleFonts.nunito(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: GlobalVariables.HeadingText,
                    ),
                    icon: const Iconify(
                      Ep.arrow_down,
                      size: 24,
                      color: GlobalVariables.HeadingText,
                    ),
                  ),
                  if (_selectedVal == "Supplier")
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 16,
                        ),
                        const LabelText(
                          text: "Product Catalogue",
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        DropdownButtonFormField(
                          value: _catalogueSelectedVal,
                          items: _catalogueList.map((e) {
                            return DropdownMenuItem(
                              value: e,
                              child: Text(e),
                            );
                          }).toList(),
                          onChanged: (val) {
                            setState(() {
                              _catalogueSelectedVal = val as String;
                            });
                          },
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide.none,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide.none,
                            ),
                            filled: true,
                            fillColor: GlobalVariables.TextBoxBg,
                            hintStyle: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          style: GoogleFonts.nunito(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: GlobalVariables.HeadingText,
                          ),
                          icon: const Iconify(
                            Ep.arrow_down,
                            size: 24,
                            color: GlobalVariables.HeadingText,
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        const LabelText(
                          text: "Registration Number",
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        SizedBox(
                          height: 56,
                          child: CustomTextField(
                            type: 'text',
                            hintText: "Enter your registration number",
                            controller: registrationNumberController,
                          ),
                        ),
                      ],
                    ),
                  const SizedBox(
                    height: 16,
                  ),
                  const LabelText(
                    text: "Email",
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                    height: 56,
                    child: CustomTextField(
                      type: 'text',
                      hintText: "Enter your email",
                      controller: emailController,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const LabelText(
                    text: "Password",
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                    height: 56,
                    child: CustomTextField(
                      type: 'password',
                      hintText: "Enter your password",
                      controller: passwordController,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const LabelText(
                    text: "Phone Number",
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                    height: 56,
                    child: CustomTextField(
                      type: 'text',
                      hintText: "Enter your phone number",
                      controller: phoneNumberController,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const LabelText(
                    text: "Location",
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                    height: 56,
                    child: CustomTextField(
                      type: 'text',
                      hintText: "Enter your location",
                      controller: registrationNumberController,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Iconify(
                        Ion.location_sharp,
                        size: 16,
                        color: GlobalVariables.HeadingText,
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Text(
                        "Use current location",
                        style: GoogleFonts.nunito(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: GlobalVariables.HeadingText),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 38,
                  ),
                  SizedBox(
                      width: double.infinity,
                      height: 56,
                      child: PrimaryButton(
                        onPressed: () {
                          if (_selectedVal == "Merchant") {
                            Navigator.pushNamed(context, "/merchant-home");
                          } else if (_selectedVal == "Supplier") {
                            Navigator.pushNamed(context, "/supplier-home");
                          }
                        },
                        text: "Register",
                      )),
                  const SizedBox(
                    height: 38,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 68,
                        height: 2,
                        color: GlobalVariables.PrimaryColor,
                      ),
                      Text(
                        "Register using",
                        style: GoogleFonts.nunito(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: GlobalVariables.HeadingText,
                        ),
                      ),
                      Container(
                        width: 68,
                        height: 2,
                        color: GlobalVariables.PrimaryColor,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 38,
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 52),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/devicon_google.png',
                          height: 32,
                          width: 32,
                        ),
                        Image.asset(
                          'assets/images/logos_facebook.png',
                          height: 32,
                          width: 32,
                        ),
                        Image.asset(
                          'assets/images/ri_apple-fill.png',
                          height: 32,
                          width: 32,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 48,
                  ),
                  Center(
                    widthFactor: double.infinity,
                    child: RichText(
                        text: TextSpan(
                            style: DefaultTextStyle.of(context).style,
                            children: <TextSpan>[
                          TextSpan(
                            text: 'Already have an account? ',
                            style: GoogleFonts.nunito(
                              decoration: TextDecoration.none,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: GlobalVariables.HeadingText,
                            ),
                          ),
                          TextSpan(
                              text: 'Sign in here.',
                              style: GoogleFonts.nunito(
                                decoration: TextDecoration.none,
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: GlobalVariables.PrimaryColor,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.pushNamed(context, '/login');
                                }),
                        ])),
                  ),
                  const SizedBox(
                    height: 48,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
