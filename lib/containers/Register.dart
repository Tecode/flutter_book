// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter_book/helpers/constants.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter_book/routers/application.dart';

import 'package:provider/provider.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_book/stores/registerStore.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController _passwordFilter = TextEditingController();
  final TextEditingController _confirmPasswordFilter = TextEditingController();
  final TextEditingController _nameFilter = TextEditingController();

  RegisterStore registerStore;

  @override
  Widget build(BuildContext context) {
    // 注册的store
    registerStore = Provider.of<RegisterStore>(
      context,
      listen: false,
    );

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 80.0, bottom: 40.0),
          margin: EdgeInsets.symmetric(horizontal: Constants.pageMargin),
          child: Container(
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
                      autofocus: true,
                      controller: _nameFilter,
                      decoration: InputDecoration(
                          errorText: '用户名不能为空',
                          hintText: '用户名',
                          border: InputBorder.none,
                          fillColor: Color(AppColors.themeColorGray),
                          filled: true,
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 16.0)),
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
                          errorText: '邮箱不能为空',
                          hintText: '邮箱',
                          border: InputBorder.none,
                          fillColor: Color(AppColors.themeColorGray),
                          filled: true,
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 16.0)),
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
                          errorText: '登录密码不能为空',
                          hintText: '密码',
                          border: InputBorder.none,
                          fillColor: Color(AppColors.themeColorGray),
                          filled: true,
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 16.0)),
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
                          errorText: '确认密码与密码不一致',
                          hintText: '确认密码',
                          border: InputBorder.none,
                          fillColor: Color(AppColors.themeColorGray),
                          filled: true,
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 16.0)),
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
                    child: Observer(
                      builder: (_) => InkWell(
                        onTap: () {
                          registerStore.handleRegister();
                        },
                        child: Center(
                          child: Text('注册',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Poppins-Bold',
                                  fontSize: 18,
                                  letterSpacing: 1.0)),
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      '已有账号? ',
                      style: TextStyle(
                          fontFamily: 'Poppins-Medium',
                          color: Color(AppColors.fontColorGray)),
                    ),
                    InkWell(
                      onTap: () {
                        Application.router.navigateTo(
                          context,
                          '/login',
                          transition: TransitionType.native,
                        );
                      },
                      child: Text('登录',
                          style: TextStyle(
                              color: Color(AppColors.mainColor),
                              fontFamily: 'Poppins-Bold')),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
