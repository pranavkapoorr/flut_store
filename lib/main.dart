import 'package:flut_store/feed_body.dart';
import 'package:flut_store/new_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';



void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: new ThemeData(primarySwatch: Colors.blue,
            primaryColor: defaultTargetPlatform == TargetPlatform.iOS ? Colors
                .grey[50] : null
        ), //Theme Data
        home: new HomePage(),
        routes: <String, WidgetBuilder>{
          "/electronics": (BuildContext context) => NewPage('Electronics'),
          "/b": (BuildContext context) => NewPage('Lifestyle'),
          "/notifications": (BuildContext context) => NewPage('notifications'),
        }); //Material App
  }
}


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
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
          new IconButton(icon: new Icon(Icons.add_shopping_cart), onPressed: () {
            Navigator.of(context).pushNamed("/notifications");
          }),

        ],
      ), //AppBar
      drawer: new Drawer(
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
      ), //parent Drawer
      body: new feed_body(

      ), //Feed body
    ); //Scaffold
  }
}