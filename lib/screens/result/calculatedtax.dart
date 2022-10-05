import 'package:flutter/material.dart';

class CalculatedTax extends StatelessWidget {
  final int carTax;

  const CalculatedTax({super.key, required this.carTax});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.blueGrey[800],
      ),
      height: 65,
      alignment: Alignment.center,
      margin: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "TAX :  ",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          Text(
            "$carTax",
            style: TextStyle(
              color: Colors.yellow[300],
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            "  BAHT",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 25,
            ),
          ),
        ],
      ),
    );
  }
}
