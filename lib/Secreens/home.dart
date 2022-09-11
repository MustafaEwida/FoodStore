import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/productwidget.dart';

import 'package:provider/provider.dart';

import '../widget/productwidget.dart';
import '../DummyJson/info.dart';

class shopscreen extends StatelessWidget {
  List<Widget> pw = products.map((e) {
    return productwidgit(e);
  }).toList();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffFDF384),
      child: GridView.count(
        crossAxisCount: 2,
        children: pw,
      ),
    );
  }
}
