import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  BottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25.0),
      child: GNav(
        onTabChange: (value) => onTabChange!(value),
        color: Colors.grey[400],
        gap: 8,
        mainAxisAlignment: MainAxisAlignment.center,
        activeColor: Colors.grey[700],
        tabs: [
          GButton(icon: Icons.coffee_rounded, text: 'Choose'),
          GButton(icon: Icons.payments_rounded, text: 'Pay'),
        ],
      ),
    );
  }
}
