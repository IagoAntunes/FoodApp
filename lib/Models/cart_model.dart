// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:food/Models/food_model.dart';

class Cart with ChangeNotifier {
  List<FoodItem> listCartFood = [];
  double _total = 0;

  double getTotal() {
    _total = 0;
    for (var item in listCartFood) {
      _total = _total + (double.parse(item.price) * item.quantity);
    }
    return _total;
  }

  void addItem(FoodItem foodItem) {
    if (listCartFood.contains(foodItem)) {
    } else {
      listCartFood.add(foodItem);
    }
    notifyListeners();
  }

  void removeItem(FoodItem foodItem) {
    if (listCartFood.contains(foodItem)) {
      listCartFood.remove(foodItem);
    }
    notifyListeners();
  }

  void clear() {
    listCartFood = [];
    notifyListeners();
  }
}
