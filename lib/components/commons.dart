import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/global_variables.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  const PrimaryButton({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all<Color>(const Color(0xFF007BFF)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        ),
      ),
      child: Text(
        text,
        style: GoogleFonts.inter(
            fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
      ),
    );
  }
}

class SecondaryButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  const SecondaryButton({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: Colors.white,
          foregroundColor: GlobalVariables.PrimaryColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
              side: const BorderSide(
                  width: 2, color: GlobalVariables.PrimaryColor))),
      child: Text(
        text,
        style: GoogleFonts.inter(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: GlobalVariables.PrimaryColor),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;

  const CustomTextField({
    Key? key,
    required this.controller,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: GoogleFonts.inter(
          textStyle: const TextStyle(
              color: Color(0xFF21371F),
              fontSize: 14,
              fontWeight: FontWeight.normal)),
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        filled: true,
        fillColor: GlobalVariables.TextBoxBg,
        hintText: hintText,
        hintStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}

class LabelText extends StatelessWidget {
  final String text;
  const LabelText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.nunito(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: GlobalVariables.HeadingText,
      ),
    );
  }
}
