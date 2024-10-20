import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ventela_shop/components/items_tile.dart';
import 'package:ventela_shop/data/cart.dart';
import 'package:ventela_shop/data/shoe.dart';

class ItemsPage extends StatefulWidget {
  const ItemsPage({super.key});

  @override
  State<ItemsPage> createState() => _ItemsPageState();
}

class _ItemsPageState extends State<ItemsPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: const Color(0xFFD6D6D6),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: value.getShoeList().length,
                    itemBuilder: (context, index) {
                      Shoe shoe = value.getShoeList()[index];
                      return ItemsTile(shoe: shoe);
                    },
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Divider(
                    color: Colors.transparent,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
