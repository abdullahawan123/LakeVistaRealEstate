import 'package:flutter/material.dart';
import 'package:lakevistaapp/screen_interfaces/authentication.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double opacity = 0.0;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        opacity = 1.0;
      });
      Future.delayed(const Duration(seconds: 3), () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => const AuthenticationScreen(),
          ),
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(Colors.white70.withOpacity(.9), BlendMode.lighten),
              child: Image.asset(
                'assets/leaf-01.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
          Center(
            child: AnimatedOpacity(
              duration: const Duration(seconds: 2),
              opacity: opacity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/logo.png',
                    width: 500,
                    height: 550,
                  ),
                ],
              ),
            ),
          ),
        ],
      )
    );
  }
}
