import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ic.dart';
import 'package:iconify_flutter/icons/ion.dart';
import 'package:iconify_flutter/icons/charm.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:image_picker/image_picker.dart';

import '../components/commons.dart';
import '../constants/global_variables.dart';

class SupplierEditProductScreen extends StatefulWidget {
  const SupplierEditProductScreen({super.key});

  @override
  State<SupplierEditProductScreen> createState() =>
      _SupplierEditProductScreenState();
}

class _SupplierEditProductScreenState extends State<SupplierEditProductScreen> {
  final TextEditingController productNameController = TextEditingController();
  final TextEditingController productSizeController = TextEditingController();
  final TextEditingController productPriceController = TextEditingController();
  final TextEditingController productMOQController = TextEditingController();
  final TextEditingController productDescController = TextEditingController();

  String _imagePath = "";
  final ImagePicker _picker = ImagePicker();

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
                height: 40,
              ),
              Center(
                child: Text(
                  "Edit Product",
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
                text: "Product Name",
              ),
              const SizedBox(
                height: 12,
              ),
              SizedBox(
                height: 56,
                child: CustomTextField(
                  type: 'text',
                  hintText: "Enter the product name",
                  controller: productNameController,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const LabelText(
                text: "Product Size",
              ),
              const SizedBox(
                height: 12,
              ),
              SizedBox(
                height: 56,
                child: CustomTextField(
                  type: 'text',
                  hintText: "Enter the product size",
                  controller: productSizeController,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const LabelText(
                text: "Product Price",
              ),
              const SizedBox(
                height: 12,
              ),
              SizedBox(
                height: 56,
                child: CustomTextField(
                  type: 'text',
                  hintText: "Enter the product price",
                  controller: productPriceController,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const LabelText(
                text: "Product MOQ",
              ),
              const SizedBox(
                height: 12,
              ),
              SizedBox(
                height: 56,
                child: CustomTextField(
                  type: 'text',
                  hintText: "Enter the product MOQ",
                  controller: productMOQController,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const LabelText(
                text: "Product Description",
              ),
              const SizedBox(
                height: 12,
              ),
              SizedBox(
                height: 56,
                child: CustomTextField(
                  type: 'text',
                  hintText: "Enter the product description",
                  controller: productDescController,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const LabelText(
                text: "Product Image",
              ),
              const SizedBox(
                height: 12,
              ),
              _imagePath == ""
                  ? Container(
                      height: 112,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: GlobalVariables.TextBoxBg,
                          borderRadius: BorderRadius.circular(8)),
                      child: ElevatedButton(
                        onPressed: () async {
                          final pickedFile = await _picker.pickImage(
                              source: ImageSource.gallery);

                          if (pickedFile != null) {
                            setState(() {
                              _imagePath = pickedFile.path;
                            });
                          }
                        },
                        style: ButtonStyle(
                            overlayColor: MaterialStateProperty.all<Color>(
                                Colors.blueAccent),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.transparent),
                            elevation: MaterialStateProperty.all<double>(0)),
                        child: const Center(
                            child: Iconify(
                          Ion.image_sharp,
                          size: 42,
                          color: GlobalVariables.SubHeadingText,
                        )),
                      ),
                    )
                  : SizedBox(
                      height: 268,
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () async {
                            final pickedFile = await _picker.pickImage(
                                source: ImageSource.gallery);

                            if (pickedFile != null) {
                              setState(() {
                                _imagePath = pickedFile.path;
                              });
                            }
                          },
                          style: ButtonStyle(
                              overlayColor: MaterialStateProperty.all<Color>(
                                  Colors.blueAccent),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.transparent),
                              elevation: MaterialStateProperty.all<double>(0)),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.file(
                                File(_imagePath),
                                fit: BoxFit.cover,
                                width: double.infinity,
                                height: double.infinity,
                              ))),
                    ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                height: 56,
                child: PrimaryIconRightButton(
                  text: "Save Product",
                  icon: const Iconify(
                    Mdi.tick,
                    size: 24,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/supplier-home');
                  },
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
