import 'package:flutter/material.dart';
import 'package:flutter_level_6/providers/InputValuesProvider.dart';
import 'package:provider/provider.dart';

class Input2Value extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: Container(
        width: 150,
        height: 150,
        child: Center(
          child: Text((Provider.of<InputValuesProvider>(context,listen: true).input2value) == null ? 'Input 2 Value' : Provider.of<InputValuesProvider>(context,listen: true).input1value, style: TextStyle(fontSize: 40)),
        ),
      ),
    );
  }
}
