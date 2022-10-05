import 'package:flutter/material.dart';
import 'package:flutter_cartax_v2/screens/main/bottommenu.dart';
import 'package:flutter_cartax_v2/screens/main/tabmenu.dart';

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  int _currentMenuIndex = 0;

  void setMenu(int newIndex) {
    setState(() {
      _currentMenuIndex = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          "CAR TAX",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black,
      ),
      body: CarTaxTabMenu(
        currentTabIndex: _currentMenuIndex,
      ),
      bottomNavigationBar: CarTaxBottomMenu(
        setMenu: setMenu,
        currentBottomMenuIndex: _currentMenuIndex,
      ),
    );
  }
}
