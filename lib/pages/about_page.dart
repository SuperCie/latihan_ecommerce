import 'package:flutter/material.dart';
import 'package:ventela_shop/components/about_text.dart';
import 'package:ventela_shop/components/open_drawer.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
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
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            Title(
              color: Colors.black,
              child: const Text(
                "About Ventela",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 10),
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset("assets/images/perusahaan.jpg"),
            ),
            AboutText()
          ],
        ),
      ),
    );
  }
}
