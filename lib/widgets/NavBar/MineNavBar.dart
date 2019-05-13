import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_book/helpers/constants.dart';
import 'package:flutter_book/routers/application.dart';
import 'package:fluro/fluro.dart';

class MineNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Text("我的"),
        centerTitle: true,
        elevation: 0,
        actions: <Widget>[
          IconButton(
            alignment: Alignment.centerLeft,
            onPressed: () {
              Application.router.navigateTo(
                context,
                "/setting",
                transition: TransitionType.native,
                // transitionDuration: const Duration(milliseconds: 300),
              );
            },
            icon: SvgPicture.asset(
              'assets/icon/icon_setting.svg',
              width: Constants.appBarIconSize + 4.0,
              height: Constants.appBarIconSize + 4.0,
            ),
          )
        ],
      );
  }
}