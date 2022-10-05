import 'package:flutter/material.dart';

import 'package:flutter_cartax_v2/screens/calculator/calculator_screen.dart';
import 'package:flutter_cartax_v2/screens/about_screen.dart';
import 'package:flutter_cartax_v2/screens/home_screen.dart';

class CarTaxTabMenu extends StatelessWidget {
  final List<Widget> tabs = [
    Center(
      child: HomeScreen(),
    ),
    const Center(
      child: CalculatorScreen(),
    ),
    const Center(
      child: AboutScreen(),
    ),
  ];

  final int currentTabIndex;
  CarTaxTabMenu({
    Key? key,
    required this.currentTabIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return tabs[currentTabIndex];
  }
}
