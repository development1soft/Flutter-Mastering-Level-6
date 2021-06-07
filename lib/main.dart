import 'package:flutter/material.dart';
import 'package:flutter_level_6/providers/ShoppingCartProvider.dart';
import 'package:provider/provider.dart';

import 'cart.dart';

void main() {

  runApp(
    ChangeNotifierProvider(
      create: (_) => ShoppingCartProvider(),
      child: MyApp(),
    )
  );

}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductsScreen(),
    );
  }
}

class ProductsScreen extends StatefulWidget {
  @override
  _ProductsScreenState createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {

  List products = [
    {
      'id' : 1,
      'title' : 'product 1',
      'description' : 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
      'price' : '20₺',
    },
    {
      'id' : 2,
      'title' : 'product 2',
      'description' : 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
      'price' : '30₺',
    },
    {
      'id' : 3,
      'title' : 'product 3',
      'description' : 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
      'price' : '78₺',
    },
    {
      'id' : 4,
      'title' : 'product 4',
      'description' : 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
      'price' : '35₺',
    },
    {
      'id' : 5,
      'title' : 'product 5',
      'description' : 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
      'price' : '26₺',
    },
    {
      'id' : 6,
      'title' : 'product 6',
      'description' : 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
      'price' : '75₺',
    },
    {
      'id' : 7,
      'title' : 'product 7',
      'description' : 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
      'price' : '25₺',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products Page'),
        actions: <Widget>[
          Row(
            children: <Widget>[
              Text('${Provider.of<ShoppingCartProvider>(context).cart.length}',style: TextStyle(fontSize: 18)),
              IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ShoppingCartScreen()));
                },
              ),
            ],
          )
        ],
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.only(top: (index == 0) ? 10 : 25),
            child: ListTile(
              leading: Text('${products[index]['price']}'),
              title: Text(products[index]['title']),
              subtitle: Text(products[index]['description']),
              trailing: (Provider.of<ShoppingCartProvider>(context).checkIfProductExistsInCart(products[index]['id'])) ?  GestureDetector(
                child: Icon(Icons.delete),
                onTap: (){
                  Provider.of<ShoppingCartProvider>(context,listen: false).deleteProductFromCart(products[index]['id']);
                },
              ) : GestureDetector(
                child: Icon(Icons.shopping_cart),
                onTap: (){
                  Provider.of<ShoppingCartProvider>(context,listen: false).addToCart(products[index]);
                },
              ),
            ),
          );
        }
      ),
    );
  }
}
