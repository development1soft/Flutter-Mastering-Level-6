import 'package:flutter/material.dart';
import 'dashboard.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterPro(),
    );
  }
}

class CounterPro extends StatefulWidget {
  @override
  _CounterProState createState() => _CounterProState();
}

class _CounterProState extends State<CounterPro> {

  TextEditingController input1Controller = TextEditingController();

  TextEditingController input2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Demo')),
      body: Center(
        child: Dashboard(),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.open_in_browser),
        onPressed: () {
          return showDialog<void>(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text('Enter Your Values'),
                content: SingleChildScrollView(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 150,
                    child: ListView(
                      children: <Widget>[
                        TextFormField(
                          controller: input1Controller,
                          decoration: InputDecoration(
                            hintText: 'Input 1 Value',
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          controller: input2Controller,
                          decoration: InputDecoration(
                            hintText: 'Input 2 Value',
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                actions: <Widget>[
                  FlatButton(
                    child: const Text('Save'),
                    onPressed: () {
                      print('save');
                    },
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
