import 'package:flutter/material.dart';

class CounterBloc extends ChangeNotifier {
  double _counter = 0;
  double get counter => _counter;

  set counter(double val) {
    _counter = val;
    notifyListeners();
  }

  increment() {
    counter = counter + 1;
  }

  decrement() {
    counter = counter - 1;
  }

  multiply() {
    counter = counter * 2;
  }

  devide() {
    counter = counter / 2;
  }
}
