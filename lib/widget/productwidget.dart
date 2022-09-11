import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/product.dart';

import 'package:provider/provider.dart';
import '../Secreens/Detailspage.dart';
import '../provider/productProvider.dart';

class productwidgit extends StatelessWidget {
  product productitem;
  productwidgit(this.productitem);
  @override
  Widget build(BuildContext context) {
    Provider.of<productprovider>(context);
    return Container(
      decoration: BoxDecoration(
          border: Border.all(width: 2),
          borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      padding: EdgeInsets.all(5),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                  margin: EdgeInsets.only(bottom: 30),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: ((context) => descpage(productitem))));
                    },
                    child: Image.asset(
                      productitem.img,
                      fit: BoxFit.fill,
                      width: 170,
                      height: 110,
                    ),
                  ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                 
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: ((context) => descpage(productitem))));
                    },
                    child: Text(
                      productitem.title,
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  )),
              InkWell(
                onTap: () {
                  Provider.of<productprovider>(context, listen: false)
                      .addtofav(this.productitem);
                },
                child: Icon(
                  
                  productitem.isfavo == false
                      ? Icons.favorite_outline
                      : Icons.favorite,
                  color: Colors.red,
                  size: 30,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
