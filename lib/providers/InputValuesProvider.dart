import 'package:flutter/material.dart';

class InputValuesProvider extends ChangeNotifier{

  var input1value;

  var input2value;

  setValueToListeners(val1,val2)
  {

    input1value = val1;

    input2value = val2;

    print(input1value);

    print(input2value);

    notifyListeners();

  }


}