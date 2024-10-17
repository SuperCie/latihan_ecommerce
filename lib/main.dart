import 'package:flutter/material.dart';
import 'package:ventela_shop/pages/start_page.dart';

void main() {
  runApp(const VentelaShop());
}

class VentelaShop extends StatelessWidget {
  const VentelaShop({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}
