import 'package:flutter/material.dart';

import 'card.dart';

class ListTileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("ListTile"),
        ),
        body: ListTilePage(),
      ),
    );
  }
}

class ListTilePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ListTilePage();
  }
}

class _ListTilePage extends State<ListTilePage> {
  @override
  Widget build(BuildContext context) {
    final scaffold = Scaffold.of(context);
    // TODO: implement build
    return new Column(
      children: <Widget>[
        new Card(
          child: new Column(
            children: <Widget>[
              new ListTile(
                title: new Text("Title1"),
                subtitle: new Text("subtitle1"),
                leading: Icon(Icons.access_alarm),
                trailing: Icon(Icons.menu),
                onTap: _onTap,
              ),
              new Divider(),
              new ListTile(
                title: new Text("Title2"),
                subtitle: new Text("subtitle2"),
                leading: Icon(Icons.access_alarm),
                trailing: Icon(Icons.menu),
                onTap: _onTap,
              ),
              new ListTile(
                title: new Text("Title2"),
                subtitle: new Text("subtitle2"),
                leading: Icon(Icons.access_alarm),
                trailing: Icon(Icons.menu),
                onTap: _onTap,
              ),
            ],
          ),
        ),
        new Expanded(
            child: ListView.builder(
                itemBuilder: (context, index) =>
                    ListTile(
                      title: Text("title"),
                      subtitle: Text("subtitle"),
                      onTap: () {
                        scaffold.hideCurrentSnackBar();
                        scaffold.showSnackBar(new SnackBar(
                          content: Text('item$index'),
                          action:new SnackBarAction(label: "取消", onPressed: scaffold.hideCurrentSnackBar),));
                      },
                    )))
      ],
    );
  }

  void _onTap() {
    Navigator.of(context)
        .push(new MaterialPageRoute(builder: (context) => new CardWidget()));
  }
}
