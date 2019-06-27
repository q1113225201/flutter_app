import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: Text("Card"),
        ),
        body: CardPage(),
      ),
    );
  }
}

class CardPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CardPage();
  }
}

class _CardPage extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new ListView.builder(
      itemBuilder: _buildItem,
      scrollDirection: Axis.horizontal,
      itemCount: 3,
    );
  }

  Widget _buildItem1(BuildContext context, int index) {
    return new Card(
      child: new Container(
        margin: EdgeInsets.all(15),
        child: new Column(
          children: <Widget>[
            Image.asset(
              "assets/images/lake.jpg",
              height: 240,
            ),
            ListTile(
              title: Text(
                "标题",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "内容",
                style: TextStyle(color: Colors.grey),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildItem(BuildContext context, int index) {
    return new SizedBox(
      child: new Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))),
        margin: EdgeInsets.all(20),
        child: new Container(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new Image.asset(
                "assets/images/lake.jpg",
                height: 240,
              ),
              new Container(
                margin: EdgeInsets.only(bottom: 20, left: 20),
                alignment: Alignment.topLeft,
                child: new Column(
                  children: <Widget>[
                    new Text(
                      "标题",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    new Text(
                      "内容",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                  crossAxisAlignment: CrossAxisAlignment.start,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
