import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_cartax_v2/screens/splash_screen.dart';

void main() {
  runApp(const CarTaxCalculatorApp());
}

class CarTaxCalculatorApp extends StatelessWidget {
  const CarTaxCalculatorApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
    );
    return const MaterialApp(
      title: 'Car tax calculator',
      home: SplashScreen(),
    );
  }
}
