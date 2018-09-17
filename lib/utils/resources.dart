import 'package:flut_store/model/model.dart';
import 'package:flut_store/views/cart.dart';
import 'package:flutter/material.dart';


Widget getAppbar(BuildContext context){
  return new AppBar(
    centerTitle: true,
    backgroundColor: Colors.blueGrey[900],
    elevation: 0.0,
    title: new Text('FlutStore', style: new TextStyle(
        color: Colors.white,
        fontStyle: FontStyle.normal,
        fontFamily: 'Billabong',
        fontSize: 29.0)),
    //App title with left padding

    iconTheme: new IconThemeData(color: Colors.white),
    actions: <Widget>[
      new IconButton(icon: new Icon(Icons.notifications), onPressed: () {
        Navigator.of(context).pushNamed("/electronics");
      }),
      new IconButton(
          icon: new Icon(Icons.add_shopping_cart), onPressed: () {
        Navigator.of(context).push(new MaterialPageRoute(builder: (context)=>new Cart()));
      }),

    ],
  );
}

List<Product> cart = new List();
String totalCartCost(){
  double price = 0.0;
  cart.forEach((e){
    price += double.parse(e.price.substring(0,e.price.indexOf(" ")));
  });
  return price.toString();
}

