import 'package:flutter/material.dart';
import 'package:flutter_level_6/Example1/providers/InputValuesProvider.dart';
import 'package:provider/provider.dart';

class Input1Value extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: Container(
        width: 150,
        height: 150,
        child: Center(
          child: Text((Provider.of<InputValuesProvider>(context,listen: true).input1value) == null ? 'Input 1 Value' : Provider.of<InputValuesProvider>(context,listen: true).input1value, style: TextStyle(fontSize: 40)),
        ),
      ),
    );
  }
}
