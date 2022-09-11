
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

import '../Secreens/favo.dart';
import '../Secreens/home.dart';

class navprovider extends ChangeNotifier {
  List<Widget> pages = [shopscreen(), favo()];
  int c_i = 0;
  List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(icon: Icon(Icons.shop,color: Colors.white,), label: "Shop",),
    BottomNavigationBarItem(
        icon: Icon(Icons.favorite_border,color: Colors.white), label: "favorite")
  ];

  changepage(int i) {
    c_i = i;
    notifyListeners();
  }
}
