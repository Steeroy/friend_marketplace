import 'package:flutter/material.dart';
import 'package:friends_market/screens/splash_screen.dart';
import 'package:friends_market/screens/user_type.dart';

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
        '/usertype': (context) => const UserType(),
      },
    );
  }
}
