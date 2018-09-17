import 'package:flut_store/model/model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import './ProductScreen.dart';
import './CarouselDemo.dart';
import './SearchScreen.dart';
import '../utils/resources.dart';

class FlutStoreHome extends StatefulWidget {
  List cart = new List();

  @override
  _FlutStoreState createState() => new _FlutStoreState();
}

class _FlutStoreState extends State<FlutStoreHome> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.white,
        appBar: getAppbar(context),//AppBar
        drawer: _drawer(),
        body: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            _searchBar(context),
            new Flexible(
              child: _feed(context),
            ),
          ],
        )
    ); //Scaffold
  }
  Widget _drawer(){
    return new Drawer(
      child: new ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.blueGrey[900]),
            accountName: new Text('Pranav Kapoor', style: new TextStyle(
                fontSize: 18.0, fontWeight: FontWeight.bold)),
            accountEmail: new Text('pranavkapoorr@gmail.com',
                style: new TextStyle(
                    fontSize: 15.0, fontWeight: FontWeight.normal)),
            currentAccountPicture: new CircleAvatar(
              backgroundColor: Colors.black45,
              child: new Icon(
                Icons.account_circle, size: 50.0, color: Colors.white,),
            ), //Circle Avatar
          ), //UserAccount drawer header parent box
          new Divider(
              height: defaultTargetPlatform == TargetPlatform.iOS ? 5.0 : 0.0,
              color: defaultTargetPlatform == TargetPlatform.iOS
                  ? Colors.grey
                  : Colors.white), //
          new ListTile(
            title: new Text('Electronics'),
            leading: new Icon(Icons.phone_iphone),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushNamed("/a");
            },
          ), //List Tile 1
          new ListTile(
            title: new Text('Lifestyle'),
            leading: new Icon(Icons.face),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushNamed("/b");
            },
          ), //List Tile 2
          new ListTile(
            title: new Text('TVs and Appliances'),
            leading: new Icon(Icons.home),
          ), //List Tile 3
          new ListTile(
            title: new Text('Sports, Books & More'),
            leading: new Icon(Icons.store),
          ), //List 4
          new ListTile(
            title: new Text('Offer Zone'),
            leading: new Icon(Icons.local_offer),
          ), //List Tile 5
          new ListTile(
            title: new Text('My Cart'),
            leading: new Icon(Icons.shopping_cart),
          ), //List Tile 6
          new ListTile(
            title: new Text('My Wishlist'),
            leading: new Icon(Icons.favorite),
          ), //List Tile 7
          new ListTile(
            title: new Text('My Orders'),
            leading: new Icon(Icons.account_balance_wallet),
          ), //List Tile 8
          new ListTile(
            title: new Text('My Account'),
            leading: new Icon(Icons.account_box),
          ), //List Tile 9
          new ListTile(
            title: new Text('About us'),
            leading: new Icon(Icons.info),
          ), //List Tile 10
        ],
      ), //parent ListView
    );
  }
  Widget _searchBar(BuildContext context){
    return new Container(color: Colors.blueGrey[900],
        alignment: Alignment.center,
        height: 55.0,
        child: new Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(2.0),
            ),
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.all(10.0),
            child: new FlatButton(
              onPressed: () {
                Navigator.push(context, new MaterialPageRoute(builder: (context)=> new SearchScreen()));
              },
              color: Colors.white,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  new Icon(Icons.search, size: 20.0,color: Colors.grey,),
                  new Text(' What are you looking for?',
                    style: new TextStyle(color: Colors.grey,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            )
        )
    );
  }
  Widget _feed(BuildContext context) {
    var deviceSize = MediaQuery
        .of(context)
        .size;
    return new ListView(
        children: <Widget>[
          _categories(deviceSize),
          Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                new Flexible(child: new Container(height: 170.0, child: new CarouselDemo(), color: Colors.white)),
                new Flexible(child: new Container(height: 400.0,
                    color: Colors.blueGrey[600],
                    child: dealsOfDayGrid("New Arrivals",deviceSize),
                    margin: new EdgeInsets.only(top: 8.0))),

                new Flexible(child: new Container(height: 250.0,
                    color: Colors.blueGrey[600],
                    child: _singlePromotion(deviceSize),
                    margin: new EdgeInsets.only(top: 8.0))),

                new Flexible(child: new Container(height: 300.0,
                    color: Colors.blueGrey[600],
                    child: _dealsOfDay(deviceSize),
                    margin: new EdgeInsets.only(top: 8.0))),

              ]
          )
        ]
    );
  }

  Widget _categories(Size deviceSize) {
    return new Container(
      margin: new EdgeInsets.only(bottom: 10.0),
      alignment: Alignment.center,
      width: deviceSize.width,
      color: Colors.blueGrey[600],
      height: deviceSize.height * 0.08,
      child: new ListView(
        shrinkWrap: true,
        padding: new EdgeInsets.only(top: 10.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          new Container(
            height: 90.0,
            color: Colors.transparent,
            alignment: Alignment.center,
            child: new FlatButton(onPressed: () {

            }, child: new Column(
              children: <Widget>[
                new Icon(Icons.local_offer, color: Colors.white),
                new Padding(padding: new EdgeInsets.only(bottom: 2.0)),
                new Text("Offers", textAlign: TextAlign.center,
                    style: new TextStyle(color: Colors.white)),
              ],
            )),
          ),
          new Container(
            alignment: Alignment.center,
            color: Colors.transparent,
            child: new FlatButton(onPressed: () {

            }, child: new Column(
              children: <Widget>[
                new Icon(Icons.phone_iphone, color: Colors.white),
                new Padding(padding: new EdgeInsets.only(bottom: 2.0)),
                new Text("Mobiles", textAlign: TextAlign.center,
                    style: new TextStyle(color: Colors.white)),
              ],
            )),
          ),
          new Container(
            alignment: Alignment.center,
            color: Colors.transparent,
            child: new FlatButton(onPressed: () {

            }, child: new Column(
              children: <Widget>[
                new Icon(Icons.laptop_mac, color: Colors.white),
                new Padding(padding: new EdgeInsets.only(bottom: 2.0)),
                new Text("Laptops", textAlign: TextAlign.center,
                    style: new TextStyle(color: Colors.white)),
              ],
            )),
          ),
          new Container(
            alignment: Alignment.center,
            color: Colors.transparent,
            child: new FlatButton(onPressed: () {

            }, child: new Column(
              children: <Widget>[
                new Icon(Icons.more, color: Colors.white),
                new Padding(padding: new EdgeInsets.only(bottom: 2.0)),
                new Text("More", textAlign: TextAlign.center,
                    style: new TextStyle(color: Colors.white)),
              ],
            )),
          ),
        ],
      ),
    );
  }
  Widget _singlePromotion(Size deviceSize){
    return new Container(
      width: deviceSize.width,
      child: new FlatButton(
        onPressed: () {},
        child:  new Container(width: deviceSize.width, height: 230.0, color: Colors.white,
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Padding(padding: new EdgeInsets.only(top: 1.0, bottom: 6.0),
                  child: new Row(
                    children: [
                      new Expanded(
                        child: new Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            new Container(
                                padding: const EdgeInsets.only(
                                    bottom: 8.0, left: 10.0),
                                child: new Text(
                                    "Premium Sports Shoes", textAlign: TextAlign.start,
                                    style: new TextStyle(color: Colors.black,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.normal))
                            ),
                            new Container(padding: const EdgeInsets.only(
                                bottom: 8.0, left: 10.0),
                                child: new Text(
                                    "Up to 60% Off", textAlign: TextAlign.start,
                                    style: new TextStyle(color: Colors.green,
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold))),
                          ],
                        ),
                      ), //Expanded ends
                      new Padding(
                        padding: new EdgeInsets.only(bottom: 8.0, right: 2.0),
                        child: new Image.asset("lib/assets/sports shoes.png", height: 100.0,
                            fit: BoxFit.fitWidth),
                      ),
                    ],
                  )
              ), //row ends (text and image)
            ],
          ), //Column ends
        ), //white container ends
      ), //flat button ends
    );
  }
  Widget _dealsOfDay(Size deviceSize){
    return new Container(
      height: 300.0,
      width: deviceSize.width,
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Padding(padding: new EdgeInsets.only(top: 1.0, bottom: 6.0),
              child: new Row(
                children: [
                  new Expanded(
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        new Container(
                            padding: const EdgeInsets.only(
                                bottom: 8.0, left: 10.0),
                            child: new Text(
                                "New Launches", textAlign: TextAlign.start,
                                style: new TextStyle(color: Colors.white,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold))
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: new EdgeInsets.only(bottom: 8.0, right: 10.0),
                    child: new RaisedButton(
                      color: Colors.white,
                      onPressed: () {},
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(4.0)),
                      textColor: Colors.black,
                      child: new Text("View All"),
                    ),
                  ),
                ],
              )), //row ends (text and button)
          new Container(
            color: Colors.white, width: deviceSize.width, height: 220.0,
            child: new ListView.builder(
              padding: EdgeInsets.only(top: 10.0),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: products.length,
              itemBuilder: (context,index) =>
              new Container(
                width: 130.0,
                child: new FlatButton(
                    onPressed: () { Navigator.push(context, new MaterialPageRoute(builder: (context)=>new ProductScreen(products[index])));},
                    padding: new EdgeInsets.only(top: 10.0),
                    child: new Column(
                      children: <Widget>[
                        new Image.asset(
                            products[index].pic, height: 100.0,
                            fit: BoxFit.fitWidth),
                        new Padding(
                            padding: new EdgeInsets.only(bottom: 4.0)),
                        new Text(products[index].name, textAlign: TextAlign.center,
                            style: new TextStyle(
                                color: Colors.black, fontSize: 13.0)),
                        new Padding(
                            padding: new EdgeInsets.only(bottom: 4.0)),
                        new Text(products[index].price, textAlign: TextAlign.center,
                            style: new TextStyle(
                                color: Colors.green, fontSize: 13.0)),
                      ],
                    )
                ),
              ),
            ),
          )
        ],
      ), //parent column
    );
  }

}


