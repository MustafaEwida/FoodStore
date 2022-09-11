import 'package:flutter/material.dart';

import 'package:flutter_application_1/provider/navprovider.dart';
import 'package:flutter_application_1/widget/productwidget.dart';

import 'package:provider/provider.dart';
import 'widget/productwidget.dart';

import 'Secreens/Detailspage.dart';
import 'provider/navprovider.dart';
import 'provider/productProvider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: ((context) => productprovider())),
      ChangeNotifierProvider(
        create: ((context) => navprovider()),
      )
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: home(),
    );
  }
}

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Color(0xffEA684B),
        title: Text("Shop",style: TextStyle(),),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xffEA684B),
          onTap: (int i) {
            return Provider.of<navprovider>(context, listen: false)
                .changepage(i);
          },
          unselectedLabelStyle:TextStyle(fontSize: 15) ,
          selectedItemColor: Colors.white,
          selectedLabelStyle: TextStyle(fontSize: 20),
          currentIndex: Provider.of<navprovider>(context).c_i,
          items: Provider.of<navprovider>(context).items),
      body: Provider.of<navprovider>(context)
          .pages[Provider.of<navprovider>(context).c_i],
    );
  }
}
