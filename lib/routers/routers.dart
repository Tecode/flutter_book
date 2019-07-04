import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_book/routers/route_handlers.dart';

class Routes {
  //  首页
  static String root = "/";
  // 用户设置
  static String setting = "/setting";
  // 全部书籍列表
  static String detail = "/detail";
  // 书籍详情
  static String bookDetail = "/bookDetail";
  // 登录
  static String login = "/login";
  // 注册
  static String register = "/register";
  // 搜索
  static String search = "/search";
  // 排行榜
  static String leaderboard = "/leaderboard";
  // 类别
  static String category = "/category";

  static void configureRoutes(Router router) {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      print("ROUTE WAS NOT FOUND !!!");
    });
    router.define(root, handler: rootHandler);
    router.define(setting, handler: settingRouteHandler);
    router.define(detail, handler: detailRouterHandler);
    router.define(bookDetail, handler: bookDetailRouterHandler);
    router.define(login, handler: loginRouterHandler);
    router.define(register, handler: registerRouterHandler);
    router.define(search, handler: searchRouterHandler);
    router.define(leaderboard, handler: leaderboardRouterHandler);
    router.define(category, handler: categoryRouterHandler);
    // router.define(demoSimpleFixedTrans,
    //     handler: demoRouteHandler, transitionType: TransitionType.inFromLeft);
  }
}
