import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_book/helpers/constants.dart';
import 'package:flutter_book/stores/findStore.dart';

final findStore = FindStore();

class FindNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Observer(builder: (_) => Text("发现")),
      actions: <Widget>[
        IconButton(
          alignment: Alignment.centerRight,
          onPressed: () {
            findStore.setValue('tile', false);
          },
          icon: Observer(builder: (_) => findStore.tile ? SvgPicture.asset(
            'assets/icon/icon_more.svg',
            width: Constants.appBarIconSize + 2.0,
            height: Constants.appBarIconSize + 2.0,
            color: Color(AppColors.fontColor),
          ):SvgPicture.asset(
            'assets/icon/icon_more.svg',
            width: Constants.appBarIconSize + 2.0,
            height: Constants.appBarIconSize + 2.0,
            color: Color(AppColors.fontColorGray),
          )),
        ),
        IconButton(
          alignment: Alignment.centerLeft,
          onPressed: () {
            findStore.setValue('tile', true);
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
