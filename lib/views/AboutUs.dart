import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return AboutListTile(
      applicationIcon: FlutterLogo(
        colors: Colors.blueGrey,
      ),
      icon: Icon(Icons.info),
      aboutBoxChildren: <Widget>[
        SizedBox(
          height: 10.0,
        ),
        Text(
          "Developed By Pranav Kapoor",
        ),
        Text(
          "pranavkapoorr",
        ),
      ],
      applicationName: "flut_cart",
      applicationVersion: "1.0.0",
      applicationLegalese: "Apache License 2.0",
    );
  }
}