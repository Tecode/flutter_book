import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_book/helpers/constants.dart' show Constants;

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("今日推荐"),
        centerTitle: true,
        elevation: 0,
        actions: <Widget>[
          IconButton(
            alignment: Alignment.centerLeft,
            icon: SvgPicture.asset(
              'assets/icon/icon_classification.svg',
              width: Constants.appBarIconSize,
              height: Constants.appBarIconSize,
            ),
            onPressed: () {
              print("ok");
            },
          )
        ],
        // leading自定义左侧导航显示的内容
        leading: IconButton(
          alignment: Alignment.centerRight,
          icon: SvgPicture.asset(
            'assets/icon/icon_trophy.svg',
            width: Constants.appBarIconSize + 5.0,
            height: Constants.appBarIconSize + 5.0,
          ),
          onPressed: () {
            print("ok");
          },
        ),
      ),
      body: Text(
        "首页",
        style: TextStyle(color: Colors.white70),
      ),
    );
  }
}
