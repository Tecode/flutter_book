import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_book/routers/route_handlers.dart';

class Routes {
  static String root = "/";
  static String setting = "/setting";
  static String demoSimpleFixedTrans = "/demo/fixedtrans";
  static String demoFunc = "/demo/func";
  static String deepLink = "/message";

  static void configureRoutes(Router router) {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      print("ROUTE WAS NOT FOUND !!!");
    });
    router.define(root, handler: rootHandler);
    router.define(setting, handler: demoRouteHandler);
    router.define(demoSimpleFixedTrans,
        handler: demoRouteHandler, transitionType: TransitionType.inFromLeft);
  }
}
