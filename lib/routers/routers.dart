import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_book/routers/route_handlers.dart';

class Routes {
  static String root = "/";
  static String setting = "/setting";
  static String detail = "/detail";
  static String bookDetail = "/bookDetail";
  static String demoSimpleFixedTrans = "/demo/fixedtrans";
  static String demoFunc = "/demo/func";
  static String deepLink = "/message";

  static void configureRoutes(Router router) {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      print("ROUTE WAS NOT FOUND !!!");
    });
    router.define(root, handler: rootHandler);
    router.define(setting, handler: settingRouteHandler);
    router.define(detail, handler: detailRouterHandler);
    router.define(bookDetail, handler: bookDetailRouterHandler);
    // router.define(demoSimpleFixedTrans,
    //     handler: demoRouteHandler, transitionType: TransitionType.inFromLeft);
  }
}
