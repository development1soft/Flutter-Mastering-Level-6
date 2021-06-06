import 'package:flutter/material.dart';

class ShoppingCartProvider extends ChangeNotifier{

  List cart = [];

  addToCart(product)
  {
    cart.add(product);

    print('product with this name : ${product['title']} was added to cart');

    notifyListeners();
  }

}