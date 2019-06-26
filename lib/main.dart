import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'model/model_bean.dart';
import 'widget/charging.dart';
import 'widget/layout.dart';
import 'widget/login.dart';

void main() {
//  debugPaintSizeEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primaryColor: Colors.blue,
        ),
        home: new Scaffold(
          appBar: new AppBar(
            title: new Text("标题"),
            actions: <Widget>[
              new IconButton(icon: Icon(Icons.menu), onPressed: null)
            ],
          ),
          body: new MyHomePage(),
        ));
  }
}

class MyHomePage extends StatefulWidget {
  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _incrementCounter() {
    Navigator.push(context,
        new MaterialPageRoute(builder: (BuildContext context) {
      return new Login();
    }));
  }

  final _list = <ModelBean>[];

  @override
  void initState() {
    _list.add(ModelBean("登录", Login(), false));
    _list.add(ModelBean("布局", Layout(), false));
    _list.add(ModelBean("Charging", Charging(), false));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return new ListView.builder(
        padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
        itemCount: _list.length,
        itemBuilder: (context, index) {
          return _buildItem(_list[index], index);
        });
  }

  Widget _buildItem(ModelBean modelBean, int index) {
    return new Column(
      children: <Widget>[
        new ListTile(
            title: Text(modelBean.name),
            trailing: new Icon(
              modelBean.flag ? Icons.check_box : Icons.check_box_outline_blank,
              color: modelBean.flag ? Colors.blue : Colors.white,
            ),
            onTap: () {
              modelBean.flag = !modelBean.flag;
              Navigator.push(context, new MaterialPageRoute(builder: (context) {
                return modelBean.url;
              }));
            }),
        new Divider(
          color: Colors.grey,
          height: 1,
        )
      ],
    );
  }
}
