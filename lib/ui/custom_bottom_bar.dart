import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({
    @required this.currentIndex,
    @required this.onTap,
    @required this.items,
  });

  final int currentIndex;
  final ValueChanged<int> onTap;
  final List<BottomNavigationBarItem> items;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.black87,
      unselectedItemColor: Colors.white70,
      selectedItemColor: Colors.white,
      iconSize: 24.0,
      currentIndex: currentIndex,
      onTap: onTap,
      items: items,
    );
  }
}
