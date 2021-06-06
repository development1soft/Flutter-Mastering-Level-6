import 'package:flutter/material.dart';
import 'input_1.dart';
import 'input_2.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Container(
        width: 400,
        height: 400,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("PROVIDER EXAMPLE", style: TextStyle(fontSize: 30)),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Input1Value(),
                SizedBox(width: 20),
                Input2Value(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
