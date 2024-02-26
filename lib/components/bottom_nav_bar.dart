import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  final Function(int)? onTabChange;
  const MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: GNav(
          onTabChange: (value) => onTabChange!(value),
          activeColor: Colors.grey.shade700,
          tabActiveBorder: Border.all(color: Colors.white),
          color: Colors.grey.shade400,
          tabBackgroundColor: Colors.grey.shade100,
          mainAxisAlignment: MainAxisAlignment.center,
          tabBorderRadius: 16,
          tabs: [
            GButton(icon: Icons.home, text: 'Home'),
            GButton(
              icon: Icons.shopping_bag_rounded,
              text: 'Cart',
            )
          ]),
    );
  }
}
