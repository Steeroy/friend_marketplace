import 'package:flutter/material.dart';
import 'package:friends_market/screens/get_started_screen.dart';
import 'package:friends_market/screens/login_screen.dart';
import 'package:friends_market/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      routes: {
        '/get-started': (context) => const GetStartedScreen(),
        '/login': (context) => const LoginScreen(),
      },
    );
  }
}
