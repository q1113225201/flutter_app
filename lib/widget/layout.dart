import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget image = new Image.asset(
      'assets/images/lake.jpg',
      height: 240,
      fit: BoxFit.cover,
    );
    Widget titleWidget = new Container(
        padding: EdgeInsets.all(32),
        child: new Container(
          decoration: BoxDecoration(
            color: Colors.white,
              border: Border.all(color: Colors.blue[300], width: 1),
              borderRadius: BorderRadius.all(Radius.circular(8)),
            boxShadow: <BoxShadow>[
              BoxShadow(color: Colors.grey,offset: Offset(2,2),)
            ]
              ),
          padding: EdgeInsets.all(10),
          child: new Row(
            children: <Widget>[
              new Expanded(
                  child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Container(
                    padding: EdgeInsets.only(bottom: 8),
                    child: new Text(
                      "标题",
                      style: new TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  new Text(
                    "小标题",
                    style: new TextStyle(color: Colors.grey[500]),
                  )
                ],
              )),
              new Icon(
                Icons.star,
                color: Colors.red,
              ),
              new Text("41"),
            ],
          ),
        ));

    Widget buttons = new Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildButtonColumn(Icons.add, '添加'),
          _buildButtonColumn(Icons.menu, '菜单'),
          _buildButtonColumn(Icons.star, '收藏'),
        ],
      ),
    );
    Widget text = new Container(
      padding: EdgeInsets.all(32),
      child: new Text(
        '''
Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.
        ''',
        softWrap: true,
      ),
    );
    return new MaterialApp(
      title: '布局',
      theme: new ThemeData(primarySwatch: Colors.blue),
      home: new Scaffold(
        appBar: AppBar(
          title: new Text('布局'),
        ),
        body: new ListView(
          children: <Widget>[image, titleWidget, buttons, text],
        ),
      ),
    );
  }

  _buildButtonColumn(IconData icon, String str) {
    return new Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new Icon(
          icon,
          color: Colors.blue,
        ),
        new SizedBox(height: 8),
        new Text(str)
      ],
    );
  }
}
