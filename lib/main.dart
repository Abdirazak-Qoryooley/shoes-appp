import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes_app/model/shop_provider.dart';
import 'package:shoes_app/provider/provider.dart';
import 'package:shoes_app/screens/item1.dart';
import 'package:shoes_app/screens/page1.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (_) => shoesshop(),
      ),
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home(),
    ),
  ));
}
