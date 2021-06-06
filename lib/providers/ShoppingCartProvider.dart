import 'package:flutter/material.dart';

class ShoppingCartProvider extends ChangeNotifier{

  List cart = [];

  addToCart(product)
  {
    cart.add(product);

    print('product with this name : ${product['title']} was added to cart');

    notifyListeners();
  }

  checkIfProductExistsInCart(productID)
  {
    if(cart.length > 0)
    {

      var result = cart.where((product) => product['id'] == productID);

      if(result.isEmpty)
      {

        return false;

      }else{

        return true;

      }

    }else{

      return false;

    }
  }

  deleteProductFromCart(productID)
  {

    cart.removeWhere((product) => product['id'] == productID);

    print(cart.toString());

    notifyListeners();

  }
}