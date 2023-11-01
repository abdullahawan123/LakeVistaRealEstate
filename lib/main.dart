import 'package:flutter/material.dart';
import 'package:lakevistaapp/provider/splash_screen_countdown.dart';
import 'package:lakevistaapp/provider/form_radiobutton.dart';
import 'package:lakevistaapp/provider/term_checkbox.dart';
import 'package:lakevistaapp/provider/upload_doc_selection.dart';
import 'package:lakevistaapp/screen_interfaces/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SplashCountdownProvider()),
        ChangeNotifierProvider(create: (_) => FormRadioButtonProvider()),
        ChangeNotifierProvider(create: (_) => UploadDocSelectionProvider()),
        ChangeNotifierProvider(create: (_) => TermCheckBoxProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF14471A)),
          // The useMaterial3 flag should be set to false for standard Material Design.
          useMaterial3: true,
        ),
        home: const SplashScreen(),
      ),
    );
  }
}



