
import 'package:flutter/material.dart';

class MyCounterProvider extends ChangeNotifier{
  int _counter=0;
  int get counter=> _counter;
  counterIncrement(){
    _counter++;
    notifyListeners();
  }
}