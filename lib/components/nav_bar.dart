import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

// ignore: must_be_immutable
class BottomNav extends StatelessWidget {
  void Function(int)? onTabChange;
  BottomNav({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Container(
        child: GNav(
          backgroundColor: Colors.transparent,
          mainAxisAlignment: MainAxisAlignment.center,
          rippleColor: const Color.fromARGB(255, 198, 198, 198),
          hoverColor: const Color.fromARGB(255, 205, 201, 201),
          gap: 10,
          activeColor: const Color.fromARGB(255, 211, 206, 238),
          tabActiveBorder: Border.all(color: const Color(0xFFECEFF1)),
          tabBackgroundColor: Colors.grey.shade100,
          onTabChange: (value) => onTabChange!(value),
          tabs: const [
            GButton(
              iconActiveColor: Colors.black,
              textColor: Colors.black,
              icon: Icons.home,
              text: "Home",
            ),
            GButton(
              iconActiveColor: Colors.black,
              textColor: Colors.black,
              icon: Icons.shopping_bag_rounded,
              text: "Cart",
            ),
          ],
        ),
      ),
    );
  }
}
