import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/mi.dart';
import 'package:iconify_flutter/icons/ic.dart';
import 'package:iconify_flutter/icons/mdi.dart';

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

class PrimaryIconButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Iconify icon;
  const PrimaryIconButton({
    super.key,
    required this.onPressed,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed,
      icon: icon,
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all<Color>(const Color(0xFF007BFF)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        ),
      ),
      label: Text(
        text,
        style: GoogleFonts.inter(
            fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
      ),
    );
  }
}

class PrimaryIconRightButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Iconify icon;
  const PrimaryIconRightButton({
    super.key,
    required this.onPressed,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed,
      label: Text(
        text,
        style: GoogleFonts.inter(
            fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
      ),
      icon: icon,
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all<Color>(const Color(0xFF007BFF)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        ),
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

class InputBox extends StatelessWidget {
  final String placeholderText;
  final String type;

  const InputBox({
    Key? key,
    required this.placeholderText,
    required this.type,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 72,
      child: TextField(
        obscureText: type == 'text' ? false : true,
        style: GoogleFonts.inter(
            textStyle: const TextStyle(
                color: Color(0xFF363636),
                fontSize: 18,
                fontWeight: FontWeight.normal,
                letterSpacing: 1.0)),
        decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
            hintText: placeholderText,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
                borderSide:
                    const BorderSide(color: Color(0xFF23E02A), width: 3)),
            fillColor: const Color(0xFFF4F4F4),
            filled: true,
            focusedBorder: UnderlineInputBorder(
                borderSide: const BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.circular(4))),
      ),
    );
  }
}

class CustomTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final String type;
  const CustomTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.type});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    if (widget.type == "text") {
      return TextField(
        obscureText: false,
        enableSuggestions: false,
        style: GoogleFonts.inter(
            textStyle: const TextStyle(
          color: GlobalVariables.HeadingText,
          fontSize: 14,
          fontWeight: FontWeight.normal,
        )),
        controller: widget.controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          filled: true,
          fillColor: GlobalVariables.TextBoxBg,
          hintText: widget.hintText,
          hintStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      );
    } else {
      return TextField(
        obscureText: _obscureText,
        enableSuggestions: false,
        obscuringCharacter: "*",
        style: GoogleFonts.inter(
            textStyle: const TextStyle(
          color: GlobalVariables.HeadingText,
          fontSize: 14,
          fontWeight: FontWeight.normal,
        )),
        controller: widget.controller,
        decoration: InputDecoration(
          suffixIcon: IconButton(
            icon: Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
            onPressed: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          filled: true,
          fillColor: GlobalVariables.TextBoxBg,
          hintText: widget.hintText,
          hintStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      );
    }
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
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: GlobalVariables.HeadingText,
      ),
    );
  }
}

// ignore: must_be_immutable
class CustomDropdownMenu extends StatelessWidget {
  final String initialValue;
  TextEditingController roleController;
  final Function(String?) onChanged;
  CustomDropdownMenu(
      {super.key,
      required this.initialValue,
      required this.onChanged,
      required this.roleController});

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: initialValue,
      onChanged: (String? newValue) {
        if (newValue != null) {
          onChanged(newValue);
          roleController.text = newValue;
        }
      },
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
      items: const [
        DropdownMenuItem<String>(value: 'merchant', child: Text("Merchant")),
        DropdownMenuItem<String>(value: 'supplier', child: Text("Supplier")),
      ],
    );
  }
}

class SupplierItemCard extends StatelessWidget {
  final String imageUrl;
  final String itemName;
  final String itemPrice;
  final VoidCallback itemDetails;
  final VoidCallback itemEdit;
  const SupplierItemCard({
    super.key,
    required this.imageUrl,
    required this.itemName,
    required this.itemPrice,
    required this.itemDetails,
    required this.itemEdit,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
              border: Border.all(color: GlobalVariables.HeadingText, width: 2),
              borderRadius: BorderRadius.circular(16)),
          child: Center(
            child: Image.asset(
              imageUrl,
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
                  onTap: itemDetails,
                  child: Text(
                    itemName,
                    style: GoogleFonts.nunito(
                        textStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: GlobalVariables.PrimaryColor)),
                  )),
              const SizedBox(
                height: 4,
              ),
              Text(itemPrice,
                  style: GoogleFonts.nunito(
                      textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: GlobalVariables.HeadingText))),
              const SizedBox(
                height: 4,
              ),
              GestureDetector(
                onTap: itemEdit,
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
    );
  }
}

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;
  const CustomBottomNavigationBar(
      {super.key, required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero,
      width: double.infinity,
      height: 72,
      decoration: const BoxDecoration(
        color: GlobalVariables.NavBoxBg,
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        currentIndex: currentIndex,
        onTap: onTap,
        selectedItemColor: GlobalVariables.ActiveItem,
        unselectedItemColor: GlobalVariables.NonActiveItem,
        items: [
          BottomNavigationBarItem(
              icon: Iconify(
                Ic.baseline_home,
                size: 24,
                color: currentIndex == 0
                    ? GlobalVariables.ActiveItem
                    : GlobalVariables.NonActiveItem,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Iconify(
                Mdi.chart_bar,
                size: 24,
                color: currentIndex == 1
                    ? GlobalVariables.ActiveItem
                    : GlobalVariables.NonActiveItem,
              ),
              label: 'Dashboard'),
          BottomNavigationBarItem(
              icon: Iconify(
                Mdi.account,
                size: 24,
                color: currentIndex == 2
                    ? GlobalVariables.ActiveItem
                    : GlobalVariables.NonActiveItem,
              ),
              label: 'Account')
        ],
        selectedLabelStyle: GoogleFonts.nunito(
            textStyle:
                const TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
      ),
    );
  }
}
