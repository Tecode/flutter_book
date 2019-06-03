import 'package:flutter/material.dart';
import 'package:flutter_book/containers/Entrance.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("登录"),
      ),
      body: MaterialButton(
        onPressed: () {
          // 禁止跳回到之前登录的路由
          Navigator.of(context).pushAndRemoveUntil(
              new MaterialPageRoute(builder: (context) => Entrance()),
              (route) => route == null);
        },
        color: Colors.white,
        child: Text("跳过"),
      ),
    );
  }
}
