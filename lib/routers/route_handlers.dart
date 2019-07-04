import 'package:flutter_book/containers/Setting.dart';
import 'package:flutter_book/containers/Entrance.dart';
import 'package:flutter_book/containers/Detail.dart';
import 'package:flutter_book/containers/BookDetail.dart';
import 'package:flutter_book/containers/Login.dart';
import 'package:flutter_book/containers/Register.dart';
import 'package:flutter_book/containers/Search.dart';
import 'package:flutter_book/containers/Leaderboard.dart';
import 'package:flutter_book/containers/Category.dart';

// import 'package:flutter/painting.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_book/helpers/fluro_convert_util.dart';

Handler rootHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return Entrance();
});

// 我的设置路由
Handler settingRouteHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  // String message = params["message"]?.first;
  // String colorHex = params["color_hex"]?.first;
  return Setting();
});

// 书籍列表
Handler detailRouterHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return Detail(
      title: FluroConvertUtils.fluroCnParamsDecode(params["title"]?.first));
});

// 书籍详情路由
Handler bookDetailRouterHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return BookDetail();
});

// 登录
Handler loginRouterHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return Login();
});

// 注册
Handler registerRouterHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return Register();
});
// 搜索
Handler searchRouterHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return Search();
});
// 排行榜
Handler leaderboardRouterHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return Leaderboard();
});
// 类别
Handler categoryRouterHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return Category();
});

// var demoFunctionHandler = Handler(
//     type: HandlerType.function,
//     handlerFunc: (BuildContext context, Map<String, List<String>> params) {
//       String message = params["message"]?.first;
//       showDialog(
//         context: context,
//         builder: (context) {
//           return AlertDialog(
//             title: Text(
//               "Hey Hey!",
//               style: TextStyle(
//                 color: const Color(0xFF00D6F7),
//                 fontFamily: "Lazer84",
//                 fontSize: 22.0,
//               ),
//             ),
//             content: Text("$message"),
//             actions: <Widget>[
//               Padding(
//                 padding: EdgeInsets.only(bottom: 8.0, right: 8.0),
//                 child: FlatButton(
//                   onPressed: () {
//                     Navigator.of(context).pop(true);
//                   },
//                   child: Text("OK"),
//                 ),
//               ),
//             ],
//           );
//         },
//       );
//     });

/// Handles deep links into the app
/// To test on Android:
///
/// `adb shell am start -W -a android.intent.action.VIEW -d "fluro://deeplink?path=/message&mesage=fluro%20rocks%21%21" com.theyakka.fluro`
// var deepLinkHandler = Handler(
//     handlerFunc: (BuildContext context, Map<String, List<String>> params) {
//   String colorHex = params["color_hex"]?.first;
//   String result = params["result"]?.first;
//   Color color = Color(0xFFFFFFFF);
//   if (colorHex != null && colorHex.length > 0) {
//     color = Color(ColorHelpers.fromHexString(colorHex));
//   }
//   return DemoSimpleComponent(
//       message: "DEEEEEP LINK!!!", color: color, result: result);
// });
