import 'package:flut_store/CarouselDemo.dart';
import 'package:flut_store/Dealsoftheday.dart';
import 'package:flut_store/Single_brand_promotion.dart';
import 'package:flutter/material.dart';


class feed_widgets_list extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery
        .of(context)
        .size;
    return new ListView.builder(
        itemCount: 2,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) =>
        index == 0
            ? _categories(deviceSize)
            : Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
          new Flexible(child: new Container(height: 170.0, child: new CarouselDemo(), color: Colors.white)),
              new Flexible(child: new Container(height: 300.0,
                  color: Colors.blueGrey[600],
                  child: new Dealsoftheday(),
                  margin: new EdgeInsets.only(top: 8.0))),

              new Flexible(child: new Container(height: 250.0,
                  color: Colors.blueGrey[600],
                  child: new Single_brand_promotion(),
                  margin: new EdgeInsets.only(top: 8.0))),

              new Flexible(child: new Container(height: 300.0,
                  color: Colors.blueGrey[600],
                  child: new Dealsoftheday(),
                  margin: new EdgeInsets.only(top: 8.0))),


            ]
        )
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
}