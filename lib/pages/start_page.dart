import 'package:flutter/material.dart';
import 'package:ventela_shop/pages/home_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD6D6D6),
      body: Padding(
        padding: const EdgeInsets.all(35.0),
        child: Center(
          child: Column(
            children: [
              //gambar
              Image.asset(
                "assets/images/logo.png",
                height: 350,
              ),
              const SizedBox(
                height: 80,
              ),
              // text title
              const Text(
                'Ventela® Shoes',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 15,
              ),
              // subtitle text
              const Text(
                'Indonesia high quality shoes brand with international design',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black45, fontSize: 18),
              ),
              const SizedBox(
                height: 50,
              ),
              // button pindah halaman
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                ),
                child: Container(
                  width: double.infinity,
                  color: const Color(0xFF303030),
                  height: 50,
                  child: const Center(
                    child: Text(
                      "Shop Now",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
