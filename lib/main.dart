import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_book/containers/Entrance.dart';
import 'package:flutter_book/helpers/constants.dart' show AppColors;
import 'package:flutter/services.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter_book/routers/routers.dart';
import 'package:flutter_book/routers/application.dart';

void main() {
  // 修改系统状态栏颜色
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Color(AppColors.themeColor), // navigation bar color
    statusBarColor: Color(AppColors.themeColor), // status bar color
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp(){
    final router = new Router();
    Routes.configureRoutes(router);
    Application.router = router;
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Book',
      theme: ThemeData(
          primaryColor: Color(AppColors.themeColor),
          accentColor: Color(AppColors.themeColor),
          scaffoldBackgroundColor: Color(AppColors.themeColor)),
      home: Entrance(),
      onGenerateRoute: Application.router.generator,
    );
  }
}
