import 'package:flutter/material.dart';

class Login extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("登录"),
          centerTitle: true,
          flexibleSpace: Builder(builder: (context){
            return IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: _back(context),
            );
          })
        ),
        body: LoginPage(),
      ),
    );
  }

  _back(BuildContext context) {
    print("_back");
//    Navigator.pop(context);
  }
}

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {

  final _usernameTextController = TextEditingController();
  final _passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(38, 40, 38, 0),
      child: Form(child: Column(
        children:<Widget>[
          TextFormField(
            decoration: InputDecoration(hintText: "请输入用户名"),
            controller: _usernameTextController,
            maxLength: 20,
          ),
          TextFormField(
            decoration: InputDecoration(hintText: "请输入密码"),
            maxLength: 20,
            controller: _passwordTextController,
            obscureText: true,
          ),
          MaterialButton(
            // 文本内容
              child: const Text('登录'),
              color: Colors.blue,
              textColor: Colors.white,
              minWidth: double.infinity,
              onPressed: () => submitLogin(context))
        ]
      )),
    );
  }

  submitLogin(BuildContext context) {
    var username = _usernameTextController.text;
    var password = _passwordTextController.text;
    final scaffold =  Scaffold.of(context);
    scaffold.showSnackBar(SnackBar(content: Text('username=${username}\npassword=${password}'),
    action: SnackBarAction(label: '取消', onPressed: scaffold.hideCurrentSnackBar),));
  }
}