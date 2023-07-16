import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/typcn.dart';

import '../constants/global_variables.dart';
import 'get_started_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, '/get-started');
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      backgroundColor: GlobalVariables.PrimaryColor,
      body: Center(
        child: SizedBox(
          height: 128,
          width: 128,
          child: Iconify(
            Typcn.shopping_cart,
            size: 118,
            color: Colors.white,
          ),
        ),
      ),
    ));
  }
}
