import 'package:flutter/material.dart';
import 'package:ventela_shop/pages/about_page.dart';
import 'package:ventela_shop/pages/cart_page.dart';
import 'package:ventela_shop/pages/home_page.dart';

class OpenDrawer extends StatelessWidget {
  const OpenDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFFF5F5F5),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Container(
              decoration: const BoxDecoration(
                border: Border(bottom: BorderSide.none),
              ),
              child: Image.asset(
                "assets/images/logo.png",
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: ListTile(
                leading: const Icon(
                  Icons.home,
                  color: Colors.black,
                ),
                title: const Text(
                  "Home Page",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
                }),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: ListTile(
                leading: const Icon(Icons.info, color: Colors.black),
                title: const Text(
                  "About",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AboutPage(),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
