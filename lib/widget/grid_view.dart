import 'package:flutter/material.dart';

class GridViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: Text("GridView"),
        ),
        body: GridViewPage(),
      ),
    );
  }
}

class GridViewPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _GridViewPage();
  }
}

class _GridViewPage extends State<GridViewPage> {
  @override
  Widget build(BuildContext context) {
    Widget gridView = GridView.extent(
      maxCrossAxisExtent: 150,
      padding: EdgeInsets.all(4),
      mainAxisSpacing: 3,
      crossAxisSpacing: 4,
      children: _buildChildren(16),
    );
    return gridView;
  }

  _buildChildren(int count) {
    return new List<Stack>.generate(
        count,
        (index) => new Stack(
              children: <Widget>[
                Image.asset(
                  "assets/images/lake.jpg",
                  fit: BoxFit.fill,
                ),
                new Container(
                  decoration: new BoxDecoration(color: Colors.black45),
                  child: new Text('item$index',style: new TextStyle(color: Colors.white),),
                  alignment: getAlignment(index),
                  height: 40,
                )
              ],
              alignment: Alignment.bottomCenter,
            ));
  }

  getAlignment(int index) {
    switch (index % 3) {
      case 0:
        return Alignment.topRight;
      case 1:
        return Alignment.center;
      case 2:
        return Alignment.bottomLeft;
    }
  }
}
