import 'package:flutter/material.dart';
import 'package:flutter_book/helpers/constants.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter_book/routers/application.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController _emailFilter = TextEditingController();
  final TextEditingController _passwordFilter = TextEditingController();
  final TextEditingController _confirmPasswordFilter = TextEditingController();
  final TextEditingController _nameFilter = TextEditingController();
  String _email = "";
  String _password = "";

  _RegisterState() {
    _emailFilter.addListener(_emailListen);
    _passwordFilter.addListener(_passwordListen);
    _confirmPasswordFilter.addListener(_confirmPasswordListen);
    _nameFilter.addListener(_nameListen);
  }

  void _emailListen() {
    if (_emailFilter.text.isEmpty) {
      _email = "";
    } else {
      _email = _emailFilter.text;
    }
  }

  void _passwordListen() {
    if (_passwordFilter.text.isEmpty) {
      _password = "";
    } else {
      _password = _passwordFilter.text;
    }
  }

  void _confirmPasswordListen() {
    if (_passwordFilter.text.isEmpty) {
      _password = "";
    } else {
      _password = _passwordFilter.text;
    }
  }

  void _nameListen() {
    if (_passwordFilter.text.isEmpty) {
      _password = "";
    } else {
      _password = _passwordFilter.text;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: Constants.pageMargin),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '注册',
              style: TextStyle(
                color: Color(AppColors.fontColor),
                fontSize: 24.0,
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20.0, top: 60.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4.0),
                child: TextField(
                  cursorColor: Colors.white,
                  controller: _nameFilter,
                  decoration: InputDecoration(
                      hintText: "昵称",
                      border: InputBorder.none,
                      fillColor: Color(AppColors.themeColorGray),
                      filled: true,
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 16.0)),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4.0),
                child: TextField(
                  onChanged: (value) {
                    print(value);
                  },
                  controller: _passwordFilter,
                  decoration: InputDecoration(
                      hintText: '邮箱',
                      border: InputBorder.none,
                      fillColor: Color(AppColors.themeColorGray),
                      filled: true,
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 16.0)),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4.0),
                child: TextField(
                  controller: _passwordFilter,
                  decoration: InputDecoration(
                      hintText: '密码',
                      border: InputBorder.none,
                      fillColor: Color(AppColors.themeColorGray),
                      filled: true,
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 16.0)),
                  obscureText: true,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4.0),
                child: TextField(
                  controller: _confirmPasswordFilter,
                  decoration: InputDecoration(
                      hintText: '确认密码',
                      border: InputBorder.none,
                      fillColor: Color(AppColors.themeColorGray),
                      filled: true,
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 16.0)),
                  obscureText: true,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 40.0),
              height: 48.0,
              decoration: BoxDecoration(
                  color: Color(AppColors.mainColor),
                  borderRadius: BorderRadius.circular(4.0)),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {},
                  child: Center(
                    child: Text("注册",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Poppins-Bold",
                            fontSize: 18,
                            letterSpacing: 1.0)),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "已有账号? ",
                  style: TextStyle(
                      fontFamily: "Poppins-Medium",
                      color: Color(AppColors.fontColorGray)),
                ),
                InkWell(
                  onTap: () {
                    Application.router.navigateTo(
                      context,
                      "/login",
                      transition: TransitionType.native,
                    );
                  },
                  child: Text("登录",
                      style: TextStyle(
                          color: Color(AppColors.mainColor),
                          fontFamily: "Poppins-Bold")),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

// 事件
  void _loginPressed() {
    print('The user wants to login with $_email and $_password');
  }

  void _createAccountPressed() {
    print('The user wants to create an accoutn with $_email and $_password');
  }

  void _passwordReset() {
    print("The user wants a password reset request sent to $_email");
  }
}
