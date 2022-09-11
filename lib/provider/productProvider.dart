import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/product.dart';
import 'package:flutter_application_1/widget/productwidget.dart';
import './productProvider.dart';
import 'package:provider/provider.dart';


class productprovider extends ChangeNotifier {
  bool change = false;
  List favoproducts = [];

  addtofav(product pro) {
    pro.isfavo = !pro.isfavo;
    change = !change;
    if (pro.isfavo == true) {
      favoproducts.add(pro);
    } else {
      favoproducts.remove(pro);
    }
    notifyListeners();
  }
}
