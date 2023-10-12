import 'package:flutter/material.dart';

class Cart_model extends ChangeNotifier {
  final List _shopitems = [
    //[item name,item price,item imagepath,color]
    ["horse man", "14", "lib/image/hourserider.png", Colors.yellow],
    ["Dog", "15", "lib/image/dog.png", Colors.brown],
    ["Mickymouse", "15", "lib/image/mickymouse.png", Colors.red],
    ["Space man", "19", "lib/image/spaceman.png", Colors.green],
  ];
  List _cartItems = [];
  get shopitems => _shopitems;

  get cartitems => _cartItems;

  void addItemstoCart(int index) {
    _cartItems.add(_shopitems[index]);
    notifyListeners();
  }

  void removeItemFromcart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  String CalculateItems() {
    double totalcost = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalcost += double.parse(_cartItems[i][1]);
    }
    return totalcost.toString();
  }
}
