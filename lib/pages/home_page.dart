import 'package:flutter/material.dart';
import 'package:ventela_shop/components/open_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // membuat bagian drawer
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0, //guna untuk menghilangkan bayangan appbar
        leading: Builder(
          builder: (context) {
            return Padding(
              padding: const EdgeInsets.only(left: 20, top: 15),
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
      // bagian search bar

      // bagian card di tengah

      // bagian bottom navigation bar(menggunakan google nav bar)

      // bottom homepage navigation

      // bottom cart navigation
    );
  }
}
