import 'package:flutter/material.dart';

class CalculateButton extends StatelessWidget {
  final void Function() buttonClickedFunction;

  const CalculateButton({super.key, required this.buttonClickedFunction});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonClickedFunction,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.red[500],
        ),
        margin: const EdgeInsets.all(10),
        alignment: Alignment.center,
        child: const Text(
          "CALCULATE !",
          style: TextStyle(
            //color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
