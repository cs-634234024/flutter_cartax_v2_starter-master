import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

class CarTaxBottomMenu extends StatelessWidget {
  final int currentBottomMenuIndex;
  final Function setMenu;

  const CarTaxBottomMenu({
    Key? key,
    required this.currentBottomMenuIndex,
    required this.setMenu,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavyBar(
      backgroundColor: Colors.black,
      selectedIndex: currentBottomMenuIndex,
      iconSize: 30,
      items: [
        BottomNavyBarItem(
          title: const Text("Home"),
          icon: const Icon(
            Icons.home,
            color: Colors.blue,
          ),
          activeColor: Colors.white,
        ),
        BottomNavyBarItem(
          title: const Text("Calculator"),
          icon: const Icon(
            Icons.calculate,
            color: Colors.green,
          ),
          activeColor: Colors.white,
        ),
        BottomNavyBarItem(
          title: const Text("About"),
          icon: const Icon(
            Icons.contact_support,
            color: Colors.yellow,
          ),
          activeColor: Colors.white,
        )
      ],
      onItemSelected: (index) {
        setMenu(index);
      },
    );
  }
}
