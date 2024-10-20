import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ventela_shop/components/shop_tile.dart';
import 'package:ventela_shop/data/cart.dart';
import 'package:ventela_shop/data/shoe.dart';
import 'package:ventela_shop/pages/items_page.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addShoecart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addShoeCart(shoe);

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text(
          "Succesfully added to cart!",
        ),
        content: const Text("Please check your cart"),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text(
              "Ok",
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        // search bar
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(12)),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Search Your Shoes",
                  style: TextStyle(fontSize: 16),
                ),
                Icon(Icons.search)
              ],
            ),
          ),
          // text
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 25),
            child: Text(
              "Ventela - Comfort Meets Style",
              style: TextStyle(fontSize: 14),
            ),
          ),
          // text
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text(
                  "HOT PICKS🔥",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ItemsPage(),
                    ),
                  ),
                  child: Text(
                    "See All",
                    style: TextStyle(fontSize: 14, color: Colors.blue.shade600),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                Shoe shoe = value.getShoeList()[index];
                return ShopTile(
                  shoe: shoe,
                  ontap: () => addShoecart(shoe),
                );
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Divider(
              color: Colors.transparent,
            ),
          ),
        ],
      ),
    );
  }
}
