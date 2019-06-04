import 'package:flutter/material.dart';
import 'package:flutter_book/containers/Entrance.dart';
import 'package:flutter_book/routers/application.dart';
import 'package:fluro/fluro.dart';

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
      body: Row(
        children: <Widget>[
          MaterialButton(
            onPressed: () {
              // 禁止跳回到之前登录的路由
              Navigator.of(context).pushAndRemoveUntil(
                  new MaterialPageRoute(builder: (context) => Entrance()),
                  (route) => route == null);
            },
            color: Colors.white,
            child: Text("跳过"),
          ),
          MaterialButton(
            onPressed: () {
              Application.router.navigateTo(
                context,
                "/register",
                transition: TransitionType.native,
                // transitionDuration: const Duration(milliseconds: 300),
              );
            },
            color: Colors.blue,
            child: Text("注册"),
          )
        ],
      ),
    );
  }
}
