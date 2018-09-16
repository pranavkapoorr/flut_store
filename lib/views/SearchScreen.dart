import 'package:flut_store/utils/resources.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget{

  @override
  _SearchScreenState createState() => new _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: getAppbar(context),
      body: Column(
        children: <Widget>[
          _searchBar(context),
        ],
      ),
    );
  }

  Widget _searchBar(BuildContext context){
    return new Container(
        color: Colors.blueGrey[900],
        alignment: Alignment.center,
        height: 55.0,
        child: new Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(2.0),
            ),
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.all(10.0),
            child: Padding(
              padding: const EdgeInsets.only(left:10.0),
              child: new TextFormField(
                autofocus: true,
                decoration: InputDecoration(
                  prefixIcon:new Icon(Icons.search, size: 20.0),
                  hintText: " What are you looking for?",
                  hintStyle: new TextStyle(color: Colors.grey,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400),
                ),
              ),
            )
        )
    );
  }
}