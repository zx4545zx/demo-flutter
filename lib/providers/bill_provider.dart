import 'package:flutter/material.dart';

class BillProvider with ChangeNotifier {
  int _counter = 0;

  void incrementCounter() {
    _counter++;
    notifyListeners();
  }

  int get counter => _counter;
}
