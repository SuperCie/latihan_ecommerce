import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ventela_shop/data/cart.dart';
import 'package:ventela_shop/pages/start_page.dart';
import 'package:ventela_shop/theme/theme_provider.dart';

void main() {
  runApp(const VentelaShop());
}

class VentelaShop extends StatelessWidget {
  const VentelaShop({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ThemeProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => Cart(),
          builder: (context, child) => MaterialApp(
            theme: Provider.of<ThemeProvider>(context).themeData,
            home: const FirstPage(),
            debugShowCheckedModeBanner: false,
          ),
        ),
      ],
    );
  }
}
