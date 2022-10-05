import 'package:flutter/material.dart';
import 'package:flutter_cartax_v2/screens/result/calculatedtax.dart';

class ResultScreen extends StatelessWidget {
  final int carTax;
  const ResultScreen({super.key, required this.carTax});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          "CAR TAX",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        //foregroundColor: Colors.grey[900],
        backgroundColor: Colors.black,
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        alignment: Alignment.center,
        child: CalculatedTax(carTax: carTax),
      ),
    );
  }
}
