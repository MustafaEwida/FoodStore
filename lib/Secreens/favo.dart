import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/productwidget.dart';

import 'package:provider/provider.dart';
import '../widget/productwidget.dart';


import '../provider/productProvider.dart';

class favo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffFDF384),
      
      child: GridView.builder(
        itemCount: Provider.of<productprovider>(context).favoproducts.length,
        itemBuilder: (context, index) {
          return productwidgit(
              Provider.of<productprovider>(context).favoproducts[index]);
        },
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 250,
        )),);
  }
}

//provider.of<productprovider>(context).favoproducts
