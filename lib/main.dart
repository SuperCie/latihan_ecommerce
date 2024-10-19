import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ventela_shop/data/cart.dart';
import 'package:ventela_shop/pages/start_page.dart';

void main() {
  runApp(const VentelaShop());
}

class VentelaShop extends StatelessWidget {
  const VentelaShop({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      builder: (context, child) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: FirstPage(),
      ),
    );
  }
}
