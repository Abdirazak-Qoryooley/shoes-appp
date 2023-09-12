import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class testingprovider extends ChangeNotifier {
  int _count = 0;

  int get count => _count;

  increament() {
    _count++;
    notifyListeners();
  }

  decreament() {
    _count--;
    notifyListeners();
  }
}
