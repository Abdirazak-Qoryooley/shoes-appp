import 'package:flutter/material.dart';
import 'package:shoes_app/model/shop_model.dart';
import 'package:provider/provider.dart';

class shoesshop extends ChangeNotifier {
  final List<shoes> _shop = [
    shoes('Nike-Huarache', '70', 'images/2.png'),
    shoes('aj', '70', 'images/3.png'),
    shoes('aj', '70', 'images/5.png'),
    shoes('aj', '70', 'images/6.png'),
    shoes('aj', '70', 'images/all.png'),
    shoes('aj', '70', 'images/aj.png'),
  ];

  List<shoes> _usercart = [];

  List<shoes> get shoesshops => _shop;

  List<shoes> get usercart => _usercart;

  void addtocart(shoes shoes) {
    usercart.add(shoes);
    notifyListeners();
  }

  void remoitemtocart(shoes shoes) {
    _usercart.remove(shoes);
    notifyListeners();
  }
}
