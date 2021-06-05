import 'package:flutter/material.dart';
import 'package:flutter_level_6/providers/InputValuesProvider.dart';
import 'package:provider/provider.dart';
import 'dashboard.dart';

void main() {

  runApp(

      MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => InputValuesProvider(),
          ),
        ],
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
      home: CounterPro()
    );
  }
}

class CounterPro extends StatefulWidget {
  @override
  _CounterProState createState() => _CounterProState();
}

class _CounterProState extends State<CounterPro> {

  var n = 0;

  var val1;

  var val2;

  TextEditingController input1Controller = TextEditingController(text: 'welcome');

  TextEditingController input2Controller = TextEditingController(text: 'provider');

  @override
  Widget build(BuildContext context) {

    print("n = ${n++}");

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

                      // setState(() {
                      //
                      //   val1 = input1Controller.text;
                      //
                      //   val2 = input2Controller.text;
                      //
                      // });

                      // Provider.of<InputValuesProvider>(context,listen: false).setValueToListeners(
                      //   input1Controller.text,
                      //   input2Controller.text
                      // );

                      // print(Provider.of<InputValuesProvider>(context,listen: true).input1value);

                      Navigator.of(context).pop();

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
