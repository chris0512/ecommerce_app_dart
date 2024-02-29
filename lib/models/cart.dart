import 'package:flutter/cupertino.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [

    Shoe(
      name: "Zoom Freak",
      price: '236',
      description: "The forward-thinking design of his latest signature shoe.",
      imagePath: 'lib/images/ZoomFreak.png',
    ),
    Shoe(
      name: "Air Jordan's",
      price: '220',
      description: "The forward-thinking design of his latest signature shoe.",
      imagePath: 'lib/images/AirJordan.png',
    ),
    Shoe(
      name: "KD Treys",
      price: '240',
      description: "The forward-thinking design of his latest signature shoe.",
      imagePath: 'lib/images/KDTREY.png',
    ),
    Shoe(
      name: "Karie 6",
      price: '190',
      description: "The forward-thinking design of his latest signature shoe.",
      imagePath: 'lib/images/Kyrie.png',
    ),
  ];

  // list of items in user cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add item to cart
  void addItemCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item from cart
  void removeItemCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}