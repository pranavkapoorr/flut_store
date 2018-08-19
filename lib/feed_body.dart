import 'package:flut_store/feed_widgets_list.dart';
import 'package:flutter/material.dart';


class feed_body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        new Container(color: Colors.blueGrey[900],
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
                    Navigator.of(context).pushNamed("/notifications");
                  },
                  color: Colors.white,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      new Icon(Icons.search, size: 20.0),
                      new Text(' What are you looking for?',
                          style: new TextStyle(color: Colors.grey,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w400),
                          ),
                    ],
                  ),
                )
            )),
        new Flexible(
          child: feed_widgets_list(),
        ),
      ],
    );
  }
}