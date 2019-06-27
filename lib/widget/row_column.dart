import 'package:flutter/material.dart';

class RowColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "RowColumn",
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
        buildRow(MainAxisSize.min, MainAxisAlignment.start, "min", "start"),
        buildRow(MainAxisSize.min, MainAxisAlignment.spaceAround, "min",
            "spaceAround"),
        new Divider(
          height: 1,
          color: Colors.grey,
        ),
        buildRow(MainAxisSize.max, MainAxisAlignment.start, "max", "start"),
        buildRow(MainAxisSize.max, MainAxisAlignment.center, "max", "center"),
        buildRow(MainAxisSize.max, MainAxisAlignment.end, "max", "end"),
        buildRow(MainAxisSize.max, MainAxisAlignment.spaceEvenly, "max",
            "spaceEvenly"),
        buildRow(MainAxisSize.max, MainAxisAlignment.spaceBetween, "max",
            "spaceBetween"),
        buildRow(MainAxisSize.max, MainAxisAlignment.spaceAround, "max",
            "spaceAround"),
      ],
    );
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: Text("RowColumn"),
        ),
        body: new ListView(
          children: <Widget>[
            header,
            content,
          ],
        ),
      ),
    );
  }

  ///构建行
  buildRow(mainAxisSize, mainAxisAlignment, sizeText, alignmentText) {
    return IntrinsicHeight(
      child: new Row(
        children: <Widget>[
          buildItem(sizeText, alignmentText),
          new VerticalDivider(
            width: 1,
            color: Colors.grey,
          ),
          buildItem(sizeText, alignmentText),
          new VerticalDivider(
            width: 1,
            color: Colors.grey,
          ),
          buildItem(sizeText, alignmentText),
        ],
        mainAxisAlignment: mainAxisAlignment,
        mainAxisSize: mainAxisSize,
      ),
    );
  }

  ///构建单项
  buildItem(String text, String tip) {
    return new Container(
      child: new Column(
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
      ),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(color: Colors.grey[300]),
    );
  }
}
