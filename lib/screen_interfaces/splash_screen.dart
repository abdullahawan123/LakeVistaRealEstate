import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:lakevistaapp/provider/splash_screen_countdown.dart';
import 'package:lakevistaapp/screen_interfaces/authentication.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    splashCountDown();
  }

  void splashCountDown() {
    final provider = Provider.of<SplashCountdownProvider>(context, listen: false);

    Future.delayed(const Duration(seconds: 2), () {
      provider.updateValue(1.0);

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
            child: Consumer<SplashCountdownProvider>(
              builder: (context, provider, child) {
                return AnimatedOpacity(
                  duration: const Duration(seconds: 2),
                  opacity: provider.value,
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
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
