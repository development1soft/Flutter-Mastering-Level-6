import 'package:flutter/material.dart';
import 'package:flutter_level_6/providers/ShoppingCartProvider.dart';
import 'package:provider/provider.dart';

class ShoppingCartScreen extends StatefulWidget {
  @override
  _ShoppingCartScreenState createState() => _ShoppingCartScreenState();
}

class _ShoppingCartScreenState extends State<ShoppingCartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Cart'),
      ),
      body: ListView.builder(
        itemCount: Provider.of<ShoppingCartProvider>(context).cart.length,
        itemBuilder: (BuildContext context , int index){
          return Container(
            margin: EdgeInsets.only(top: (index == 0) ? 10 : 25),
            child: ListTile(
              leading: Text('${Provider.of<ShoppingCartProvider>(context).cart[index]['price']}'),
              title: Text(Provider.of<ShoppingCartProvider>(context).cart[index]['title']),
              subtitle: Text(Provider.of<ShoppingCartProvider>(context).cart[index]['description']),
            ),
          );
        },
      ),
    );
  }
}
