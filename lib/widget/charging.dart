import 'package:flutter/material.dart';

class Charging extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "Charging",
      home: ChargingPage(),
    );
  }
}

class ChargingPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ChargingPage();
  }
}

class _ChargingPage extends State<ChargingPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Widget header = new Container(
        child: new Row(
          children: <Widget>[
            new Container(
                child: new Row(
              children: <Widget>[
                Icon(Icons.image),
                Text("标题"),
              ],
            )),
            new Container(
              child: new Row(
                children: <Widget>[
                  Icon(Icons.refresh),
                  Text("刷新"),
                ],
              ),
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        ),
        padding: EdgeInsets.fromLTRB(15, 10, 15, 10));
    Widget content = new Column(
      children: <Widget>[
        Container(
          child: new Row(
            children: <Widget>[
              buildItem("Text1", "tip1"),
              new VerticalDivider(
                width: 1,
                color: Colors.grey,
              ),
              buildItem("Text2", "tip2"),
              new VerticalDivider(
                width: 1,
                color: Colors.grey,
              ),
              buildItem("Text3", "tip3"),
            ],
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          ),
          padding: EdgeInsets.all(10),
        ),
        new Divider(
          height: 1,
          color: Colors.grey,
        ),
        Container(
          child: new Row(
            children: <Widget>[
              buildItem("Text1", "tip1"),
              new VerticalDivider(
                width: 1,
                color: Colors.grey,
              ),
              buildItem("Text2", "tip2"),
              new VerticalDivider(
                width: 1,
                color: Colors.grey,
              ),
              buildItem("Text3", "tip3"),
            ],
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          ),
          padding: EdgeInsets.all(10),
        ),
      ],
    );
    return new MaterialApp(
      home: new Scaffold(
        body: new ListView(
          children: <Widget>[
            header,
            content,
          ],
        ),
      ),
    );
  }

  buildItem(String text, String tip) {
    return new Column(
      children: <Widget>[
        Text(
          text,
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
        Text(
          tip,
          style: TextStyle(color: Colors.grey, fontSize: 12),
        ),
      ],
    );
  }
}
