import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_book/helpers/constants.dart' show Constants;

class Find extends StatefulWidget {
  @override
  _FindState createState() => _FindState();
}

class _FindState extends State<Find> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("发现"),
        actions: <Widget>[
          IconButton(
            alignment: Alignment.centerRight,
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icon/icon_more.svg',
              width: Constants.appBarIconSize + 2.0,
              height: Constants.appBarIconSize + 2.0,
            ),
          ),
          IconButton(
            alignment: Alignment.centerLeft,
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icon/icon_cube.svg',
              width: Constants.appBarIconSize + 2.0,
              height: Constants.appBarIconSize + 2.0,
            ),
          ),
        ],
        centerTitle: true,
        elevation: 0,
      ),
    );
  }
}
