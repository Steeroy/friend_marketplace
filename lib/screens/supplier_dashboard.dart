import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ion.dart';

import '../components/commons.dart';
import '../constants/global_variables.dart';

class SupplierDashboardScreen extends StatefulWidget {
  const SupplierDashboardScreen({super.key});

  @override
  State<SupplierDashboardScreen> createState() =>
      _SupplierDashboardScreenState();
}

class _SupplierDashboardScreenState extends State<SupplierDashboardScreen> {
  int _selectedSalesIndex = 0;
  int _selecteRevenueIndex = 0;

  void selectedSalesButton(int index) {
    setState(() {
      _selectedSalesIndex = index;
    });
  }

  void selectedRevenueButton(int index) {
    setState(() {
      _selecteRevenueIndex = index;
    });
  }

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
                child: Text(
                  "Dashboard",
                  style: GoogleFonts.nunito(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: GlobalVariables.HeadingText),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Text(
                "Your Balance",
                style: GoogleFonts.nunito(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: GlobalVariables.HeadingText),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "R12 375,23",
                style: GoogleFonts.nunito(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: GlobalVariables.HeadingText),
              ),
              const SizedBox(
                height: 24,
              ),
              Text(
                "Total Sales",
                style: GoogleFonts.nunito(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: GlobalVariables.HeadingText),
              ),
              const SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 38,
                    child: TextButton(
                      onPressed: () {
                        selectedSalesButton(0);
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              _selectedSalesIndex == 0
                                  ? GlobalVariables.PrimaryColor
                                  : GlobalVariables.DashNonActive),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.white),
                          minimumSize:
                              MaterialStateProperty.all(const Size(0, 38)),
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.symmetric(horizontal: 20)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(50)))),
                      child: Text(
                        "Weekly",
                        style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  SizedBox(
                    height: 38,
                    child: TextButton(
                      onPressed: () {
                        selectedSalesButton(1);
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              _selectedSalesIndex == 1
                                  ? GlobalVariables.PrimaryColor
                                  : GlobalVariables.DashNonActive),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.white),
                          minimumSize:
                              MaterialStateProperty.all(const Size(0, 38)),
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.symmetric(horizontal: 20)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(50)))),
                      child: Text(
                        "Monthly",
                        style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  SizedBox(
                    height: 38,
                    child: TextButton(
                      onPressed: () {
                        selectedSalesButton(2);
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              _selectedSalesIndex == 2
                                  ? GlobalVariables.PrimaryColor
                                  : GlobalVariables.DashNonActive),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.white),
                          minimumSize:
                              MaterialStateProperty.all(const Size(0, 38)),
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.symmetric(horizontal: 20)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(50)))),
                      child: Text(
                        "Yearly",
                        style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 18,
              ),
              Container(
                width: double.infinity,
                height: 192,
                decoration: BoxDecoration(
                    color: GlobalVariables.TextBoxBg,
                    borderRadius: BorderRadius.circular(8)),
                child: const Center(
                  child: Iconify(
                    Ion.image_sharp,
                    size: 48,
                    color: GlobalVariables.SubHeadingText,
                  ),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Text(
                "Total Revenue",
                style: GoogleFonts.nunito(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: GlobalVariables.HeadingText),
              ),
              const SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 38,
                    child: TextButton(
                      onPressed: () {
                        selectedRevenueButton(0);
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              _selecteRevenueIndex == 0
                                  ? GlobalVariables.PrimaryColor
                                  : GlobalVariables.DashNonActive),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.white),
                          minimumSize:
                              MaterialStateProperty.all(const Size(0, 38)),
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.symmetric(horizontal: 20)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(50)))),
                      child: Text(
                        "Weekly",
                        style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  SizedBox(
                    height: 38,
                    child: TextButton(
                      onPressed: () {
                        selectedRevenueButton(1);
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              _selecteRevenueIndex == 1
                                  ? GlobalVariables.PrimaryColor
                                  : GlobalVariables.DashNonActive),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.white),
                          minimumSize:
                              MaterialStateProperty.all(const Size(0, 38)),
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.symmetric(horizontal: 20)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(50)))),
                      child: Text(
                        "Monthly",
                        style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  SizedBox(
                    height: 38,
                    child: TextButton(
                      onPressed: () {
                        selectedRevenueButton(2);
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              _selecteRevenueIndex == 2
                                  ? GlobalVariables.PrimaryColor
                                  : GlobalVariables.DashNonActive),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.white),
                          minimumSize:
                              MaterialStateProperty.all(const Size(0, 38)),
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.symmetric(horizontal: 20)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(50)))),
                      child: Text(
                        "Yearly",
                        style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 18,
              ),
              Container(
                width: double.infinity,
                height: 192,
                decoration: BoxDecoration(
                    color: GlobalVariables.TextBoxBg,
                    borderRadius: BorderRadius.circular(8)),
                child: const Center(
                  child: Iconify(
                    Ion.image_sharp,
                    size: 48,
                    color: GlobalVariables.SubHeadingText,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: 1,
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
