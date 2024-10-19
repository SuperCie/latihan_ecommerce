import 'package:flutter/material.dart';
import 'package:ventela_shop/components/nav_bar.dart';
import 'package:ventela_shop/components/open_drawer.dart';
import 'package:ventela_shop/pages/cart_page.dart';
import 'package:ventela_shop/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void navigationBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [const ShopPage(), const CartPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD6D6D6),
      // membuat bagian drawer
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0, //guna untuk menghilangkan bayangan appbar
        leading: Builder(
          builder: (context) {
            return Padding(
              padding: const EdgeInsets.only(left: 16, top: 10),
              child: IconButton(
                onPressed: () => Scaffold.of(context).openDrawer(),
                icon: const Icon(
                  Icons.menu,
                  size: 25,
                ),
              ),
            );
          },
        ),
      ),
      drawer: const OpenDrawer(),

      bottomNavigationBar: BottomNav(
        onTabChange: (index) => navigationBar(index),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
