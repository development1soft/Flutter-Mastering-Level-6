import 'package:flutter/material.dart';

class Input1Value extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: Container(
        width: 150,
        height: 150,
        child: Center(
          child: Text("Input 1 Value", style: TextStyle(fontSize: 40)),
        ),
      ),
    );
  }
}
