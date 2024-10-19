import 'package:flutter/material.dart';
import 'package:ventela_shop/data/shoe.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeList = [
    Shoe(
        name: "Ventela Alpha Low Grey",
        price: "184.800",
        description:
            "A casual low-cut sneaker in grey. Designed for everyday comfort with durable canvas material.",
        imagePath: "assets/images/Ventela Alpha.jpg"),
    Shoe(
        name: "Ventela Icon Black",
        price: "214.800",
        description:
            "A stylish low-cut black sneaker designed for everyday comfort with durable canvas material.",
        imagePath: "assets/images/Ventela Icon Black.jpg"),
    Shoe(
        name: "Ventela Republic Low",
        price: "254.800",
        description:
            "Classic low-top sneakers in black with a sleek gum outsole. Sturdy and comfortable for various activities.",
        imagePath: "assets/images/Ventela Republic Low Black Gum.jpg"),
    Shoe(
        name: "Ventela Reborn Reflective",
        price: "314.800",
        description:
            "Low-cut sneakers in cream with modern reflective accents. A perfect choice for a trendy and casual look.",
        imagePath: "assets/images/Ventela Reborn Low Reflective.jpg"),
    Shoe(
        name: "Ventela Ethnic High Black",
        price: "198.800",
        description:
            "High-top sneakers with ethnic detailing. The black color and natural accents add a stylish and unique touch to your outfit.",
        imagePath: "assets/images/Ventela Ethnic High Black Natural.jpg"),
  ];
  // list of items in user cart

  List<Shoe> userCart = [];
  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeList;
  }

  // get cart

  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addShoeCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item from cart
  void removeShoeCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
