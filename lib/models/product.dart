class product {
  String title;
  String img;
  String type;
  String desc;
  String price;

  bool isfavo;
  product(this.title, this.img, this.type, this.desc, this.price,
      {this.isfavo = false});
}

  /*product(Map map) {
    title = map['title'];
    img = map['url'];
    type = map['type'];
    desc = map['description'];
    price = map['price'];
    rating = map['rating'];
  }
}*/
/*
class allproducts {
  List<product>? products;
 allproducts(){
  List<Map> data = 
 }

}
*/