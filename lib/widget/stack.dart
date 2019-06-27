import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new Scaffold(
          appBar: new AppBar(
            title: new Text("Stack"),
          ),
          body: StackPage()),
    );
  }
}

class StackPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _StackPage();
  }
}

class _StackPage extends State<StackPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      child: new Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          new CircleAvatar(
            backgroundImage: new AssetImage("assets/images/lake.jpg"),
            radius: 150,
            child: new Text("CircleAvatar Child"),
          ),
          new Container(
              alignment: Alignment.bottomCenter,
              decoration: new BoxDecoration(color: Colors.white24),
              height: 40,
              width: 300,
              child: new Container(
                alignment: Alignment.center,
                child: new Text(
                  "time",
                  style: new TextStyle(color: Colors.white),
                ),
              ))
        ],
      ),
      decoration: new BoxDecoration(
        color: Colors.grey[300],
      ),
      alignment: Alignment.center,
    );
  }
}
