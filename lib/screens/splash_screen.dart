import 'package:flutter/material.dart';
import 'package:flutter_cartax_v2/screens/main/main.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    var d = const Duration(seconds: 5);
    Future.delayed(
      d,
      () {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const Main(),
          ),
          (route) => false,
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.black,
            alignment: Alignment.center,
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            color: Colors.black,
            //width: double.infinity,
            //height: double.infinity,
            child: Image.asset('images/cartax.gif'),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.black,
            alignment: Alignment.center,
            child: AnimatedTextKit(animatedTexts: [
              TyperAnimatedText("CAR TAXCALCULATOR",
                  textStyle: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.cyan),
                  textAlign: TextAlign.center,
                  speed: const Duration(milliseconds: 200))
            ]),
          ),
        )
      ]),
    );
  }
}
