import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_book/helpers/constants.dart';

class FindNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Text("发现"),
        actions: <Widget>[
          IconButton(
            alignment: Alignment.centerRight,
            onPressed: () {
              // setState(() {
              //   this._tile = true;
              // });
            },
            icon: SvgPicture.asset(
              'assets/icon/icon_more.svg',
              width: Constants.appBarIconSize + 2.0,
              height: Constants.appBarIconSize + 2.0,
              // color: Color(
              //     this._tile ? AppColors.fontColor : AppColors.fontColorGray),
            ),
          ),
          IconButton(
            alignment: Alignment.centerLeft,
            onPressed: () {
              // setState(() {
              //   this._tile = false;
              // });
            },
            icon: SvgPicture.asset(
              'assets/icon/icon_cube.svg',
              width: Constants.appBarIconSize + 2.0,
              height: Constants.appBarIconSize + 2.0,
              // color: Color(
              //     !this._tile ? AppColors.fontColor : AppColors.fontColorGray),
            ),
          ),
        ],
        centerTitle: true,
        elevation: 0,
      );
  }
}