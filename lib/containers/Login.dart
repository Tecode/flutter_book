import 'package:flutter/material.dart';
import 'package:flutter_book/containers/Entrance.dart';
import 'package:flutter_book/routers/application.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter_book/helpers/constants.dart';
import 'package:fluwx/fluwx.dart' as fluwx;

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailFilter = TextEditingController();
  final TextEditingController _passwordFilter = TextEditingController();

  String _email = "";
  String _password = "";

  _LoginState() {
    _emailFilter.addListener(_emailListen);
    _passwordFilter.addListener(_passwordListen);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // 初始化的时候跳转到主页，不然会报错
    // Future(() {
    //   Navigator.of(context).pushAndRemoveUntil(
    //       MaterialPageRoute(builder: (context) => Entrance()),
    //       (route) => route == null);
    // });

    _initFluwx();
  }

  _initFluwx() async {
    await fluwx.register(
      appId: "wxd930ea5d5a258f4f",
      doOnAndroid: true,
      doOnIOS: false,
      universalLink: '',
      // enableMTA: false,
    );
    var result = await fluwx.isWeChatInstalled();
    print("is installed $result");
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: Constants.pageMargin),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <
            Widget>[
          Text(
            '登录',
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
                controller: _emailFilter,
                decoration: InputDecoration(
                    hintText: "（邮箱）直接点击登录进入主页面",
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
                obscureText: true,
                decoration: InputDecoration(
                    hintText: '（密码）暂时没有接入API',
                    border: InputBorder.none,
                    fillColor: Color(AppColors.themeColorGray),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 16.0)),
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
                onTap: () {
                  // 禁止跳回到之前登录的路由
                  Navigator.of(context).pushAndRemoveUntil(
                      new MaterialPageRoute(builder: (context) => Entrance()),
                      (route) => route == null);
                },
                child: Center(
                  child: Text("登录",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Poppins-Bold",
                          fontSize: 18,
                          letterSpacing: 1.0)),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              fluwx
                  .sendAuth(
                      scope: "snsapi_userinfo", state: "wechat_sdk_demo_test")
                  .then((data) {});
            },
            child: Text("微信登录",
                style: TextStyle(
                    color: Color(AppColors.mainColor),
                    fontFamily: "Poppins-Bold")),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "还没有账号? ",
                style: TextStyle(
                    fontFamily: "Poppins-Medium",
                    color: Color(AppColors.fontColorGray)),
              ),
              InkWell(
                onTap: () {
                  Application.router.navigateTo(
                    context,
                    "/register",
                    transition: TransitionType.native,
                  );
                },
                child: Text("立即注册",
                    style: TextStyle(
                        color: Color(AppColors.mainColor),
                        fontFamily: "Poppins-Bold")),
              )
            ],
          )
        ]),
      ),
    );
  }
}
