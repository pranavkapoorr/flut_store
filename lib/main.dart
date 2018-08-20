import 'package:flutter/material.dart';
import './views/FlutStoreHome.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Whatsapp',
      theme: new ThemeData(
        primaryColor: Colors.blueGrey[900],
        accentColor: new Color(0xff25D366),
      ),
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      home: new FlutStoreHome(),
    );
  }
}