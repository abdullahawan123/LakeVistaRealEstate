import 'package:flutter/material.dart';
import 'package:lakevistaapp/screen_interfaces/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF14471A)),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}


