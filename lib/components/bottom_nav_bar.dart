import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  BottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: GNav(
          mainAxisAlignment: MainAxisAlignment.center,
          tabActiveBorder: Border.all(color: Colors.white),
          tabBackgroundColor: Colors.grey,
          tabBorderRadius: 8,
          onTabChange: (value) => onTabChange!(value),
          tabs: [
            GButton(
              icon: Icons.home,
              text: 'Shop',
            ),
            GButton(
              icon: Icons.shopping_bag,
              text: 'Cart',
            ),
          ]),
    );
  }
}
