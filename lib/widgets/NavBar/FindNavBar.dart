import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_book/helpers/constants.dart';
import 'package:flutter_book/stores/findStore.dart';

class FindNavBar extends StatelessWidget {
  final FindStore findStore = FindStore();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => AppBar(
            title: Text("发现"),
            actions: <Widget>[
              IconButton(
                alignment: Alignment.centerRight,
                onPressed: () {
                  findStore.setTile('tile', true);
                },
                icon: SvgPicture.asset(
                  'assets/icon/icon_more.svg',
                  width: Constants.appBarIconSize + 2.0,
                  height: Constants.appBarIconSize + 2.0,
                  color: Color(findStore.tile
                      ? AppColors.fontColor
                      : AppColors.fontColorGray),
                ),
              ),
              IconButton(
                alignment: Alignment.centerLeft,
                onPressed: () {
                  findStore.setTile('tile', false);
                },
                icon: SvgPicture.asset(
                  'assets/icon/icon_cube.svg',
                  width: Constants.appBarIconSize + 2.0,
                  height: Constants.appBarIconSize + 2.0,
                  color: Color(findStore.tile
                      ? AppColors.fontColorGray
                      : AppColors.fontColor),
                ),
              ),
            ],
            centerTitle: true,
            elevation: 0,
          ),
    );
  }
}
