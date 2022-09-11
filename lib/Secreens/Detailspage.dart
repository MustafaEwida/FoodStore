import 'package:flutter/material.dart';

import 'package:flutter_application_1/models/product.dart';
import 'package:flutter_application_1/widget/productwidget.dart';
import 'package:flutter_application_1/provider/productProvider.dart';
import 'package:provider/provider.dart';


import '../widget/productwidget.dart';


class descpage extends StatelessWidget {
  product productitem;
  descpage(this.productitem);

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffEA684B),
          title: Text(productitem.title),
          centerTitle: true,
        ),
        body: Container(
          color: Color(0xffFDF384),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    productitem.img,
                    height: MediaQuery.of(context).size.height/3,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.fill,
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        
                        Container(
                          height: MediaQuery.of(context).size.height/16,
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Color(0xffEA684B),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Row(
                            children: [
                              Text(
                                "price:",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(productitem.price,
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400)),
                            ],
                          ),
                        ),
                        
                        Container(
                          height:  MediaQuery.of(context).size.height/16,
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Color(0xffEA684B),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Row(
                            children: [
                              Text("Type:",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400)),
                              const SizedBox(
                                width: 3,
                              ),
                              Text(productitem.type,
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 30, left: 10),
                        child: Text("Description:",
                            style: TextStyle(
                              color: Colors.black54,
                                fontSize: 30, fontWeight: FontWeight.w500)),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10, left: 10, bottom: 30),
                        child: Text(productitem.desc,
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            )),
                        width:  MediaQuery.of(context).size.width/1.1,
                        height:  MediaQuery.of(context).size.height/6,
                      )
                    ],
                  )
                ],
              ),
              InkWell(
                onTap: () {
                  Provider.of<productprovider>(context, listen: false)
                      .addtofav(productitem);
                },
                child: Container(
                  width: MediaQuery.of(context).size.width/1.3,
                  height: MediaQuery.of(context).size.height/8,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Color(0xffEA684B)),
                  child: Center(
                    child: Text(
                      "Favoriate",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  } //onPressed:(){Provider.of<productprovider>(context,listen: false).addtofav(productitem);},child: Text("Favoriate"),
}
