import 'package:flutter/material.dart';

class OrderProvider with ChangeNotifier {
  int _typeOrder = 0;
  int _customerValue = 0;
  int _tablesId = 1;
  String _tablesName = "A1";

  void changeTypeOrder(int index) {
    _typeOrder = index;
    notifyListeners();
  }

  void insertCustomer(String value) {
    try {
      _customerValue = int.parse(value);
    } catch (e) {
      return;
    }
    notifyListeners();
  }

  void addCustomer() {
    _customerValue++;
    notifyListeners();
  }

  void removeCustomer() {
    if (_customerValue <= 0) {
      _customerValue = 0;
      return;
    }
    _customerValue--;
    notifyListeners();
  }

  void changeTables(int id, String name) {
    _tablesId = id;
    _tablesName = name;
    notifyListeners();
  }

  int get typeOrder => _typeOrder;
  int get customerValue => _customerValue;
  int get tablesId => _tablesId;
  String get tablesName => _tablesName;
}
