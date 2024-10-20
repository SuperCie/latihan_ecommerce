import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ventela_shop/data/cart.dart';
import 'package:ventela_shop/data/shoe.dart';

// ignore: must_be_immutable
class CartItem extends StatefulWidget {
  Shoe shoe;
  CartItem({super.key, required this.shoe});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  void removeItemFromCart() {
    Provider.of<Cart>(context, listen: false).removeShoeCart(widget.shoe);

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text(
          "Successfully deleted from Cart",
          style: TextStyle(fontSize: 20),
        ),
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
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      margin: EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(widget.shoe.imagePath),
        title: Text(widget.shoe.name),
        subtitle: Text(widget.shoe.price),
        trailing: IconButton(
            onPressed: removeItemFromCart, icon: const Icon(Icons.delete)),
      ),
    );
  }
}
