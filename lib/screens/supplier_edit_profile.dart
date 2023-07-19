import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/mdi.dart';

import '../components/commons.dart';
import '../constants/global_variables.dart';

class SupplierEditProfile extends StatefulWidget {
  const SupplierEditProfile({super.key});

  @override
  State<SupplierEditProfile> createState() => _SupplierEditProfileState();
}

class _SupplierEditProfileState extends State<SupplierEditProfile> {
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController businessNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController registrationNumberController =
      TextEditingController();

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
                  Navigator.pushNamed(context, '/supplier-account');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Iconify(
                      Mdi.account,
                      size: 22,
                      color: GlobalVariables.HeadingText,
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Text(
                      "Account",
                      style: GoogleFonts.nunito(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: GlobalVariables.HeadingText),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Center(
                child: Text(
                  "Edit Profile",
                  style: GoogleFonts.nunito(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: GlobalVariables.HeadingText),
                ),
              ),
              const SizedBox(
                height: 44,
              ),
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
                height: 38,
              ),
              SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: PrimaryButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/supplier-account');
                    },
                    text: "Save",
                  )),
            ],
          ),
        ),
      ),
    ));
  }
}
