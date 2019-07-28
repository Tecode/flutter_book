import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_book/containers/Login.dart';
import 'package:flutter_book/helpers/constants.dart' show AppColors;
import 'package:flutter/services.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter_book/routers/routers.dart';
import 'package:flutter_book/routers/application.dart';
import 'package:provider/provider.dart';

// 发现
import 'package:flutter_book/stores/findStore.dart';
// 注册
import 'package:flutter_book/stores/registerStore.dart';
// 登录
import 'package:flutter_book/stores/loginStore.dart';
// 首页
import 'package:flutter_book/stores/homeStore.dart';

void main() {
  // 修改系统状态栏颜色
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor:
        Color(AppColors.themeColor), // navigation bar color
    statusBarColor: Color(AppColors.themeColor), // status bar color
  ));
  runApp(MultiProvider(
    providers: [
      Provider<FindStore>(
        builder: (_) => FindStore(),
      ),
      Provider<RegisterStore>(
        builder: (_) => RegisterStore(),
      ),
      Provider<LoginStore>(
        builder: (_) => LoginStore(),
      ),
      Provider<HomeStore>(
        builder: (_) => HomeStore(),
      ),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  MyApp() {
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
      home: Login(),
      onGenerateRoute: Application.router.generator,
    );
  }
}
