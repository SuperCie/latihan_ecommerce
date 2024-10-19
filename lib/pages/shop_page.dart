import 'package:flutter/material.dart';
import 'package:ventela_shop/components/shop_tile.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      // search bar
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
              color: Colors.grey[200], borderRadius: BorderRadius.circular(12)),
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
              Text(
                "See All",
                style: TextStyle(fontSize: 14, color: Colors.blue.shade600),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) => const ShopTile(),
          ),
        )
        //card (tampilan sepatu)
      ],
    );
  }
}
