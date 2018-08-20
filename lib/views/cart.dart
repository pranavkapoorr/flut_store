import 'package:flut_store/utils/resources.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget{
  @override
  CartState createState() => CartState();
}
class CartState extends State<Cart>{
  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: new AppBar(
          centerTitle: true,
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[Icon(Icons.shopping_cart,color: Colors.white,),Text(" Cart")],),
      ),
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: new Container(
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  new Text("Cart Empty!",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w500),),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new FlatButton(
                        onPressed: (){},
                        color: Theme.of(context).primaryColor,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0),side: BorderSide(color: Colors.yellow)),
                        child: Text("Start Shopping...",style: TextStyle(color:Colors.white,fontSize: 16.0,fontWeight: FontWeight.w500))),
                  )
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.blueGrey[500],
            child: dealsOfDayGrid("Continue shopping", deviceSize),
            )
            ]
          )
    );

  }


}