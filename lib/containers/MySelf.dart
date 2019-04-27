import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_book/helpers/constants.dart' show Constants;

class MySelf extends StatefulWidget {
  @override
  _MySelfState createState() => _MySelfState();
}

class _MySelfState extends State<MySelf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("我的"),
        centerTitle: true,
        elevation: 0,
        actions: <Widget>[
          IconButton(
            alignment: Alignment.centerLeft,
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icon/icon_setting.svg',
              width: Constants.appBarIconSize + 4.0,
              height: Constants.appBarIconSize + 4.0,
            ),
          )
        ],
      ),
    );
  }
}
