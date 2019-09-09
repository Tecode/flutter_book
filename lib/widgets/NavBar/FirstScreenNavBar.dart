import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_book/helpers/constants.dart';
import 'package:flutter_book/routers/application.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter_book/helpers/Adapt.dart';

class FirstScreenNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: GestureDetector(
        onTap: () {
          // 跳到搜索页面
          Application.router.navigateTo(
            context,
            "/search",
            transition: TransitionType.native,
          );
        },
        child: Container(
          padding: EdgeInsets.symmetric(
              vertical: Adapt.height(6.0), horizontal: Adapt.width(14.0)),
          decoration: BoxDecoration(
              color: Color(AppColors.themeColorGray),
              borderRadius: BorderRadius.all(Radius.circular(4.0))),
          child: Row(
            children: <Widget>[
              SvgPicture.asset('assets/icon/icon_search.svg',
                  width: Adapt.width(Constants.appBarIconSize + 2.0),
                  height: Adapt.height(Constants.appBarIconSize + 2.0)),
              SizedBox(
                width: Adapt.width(10.0),
                height: 1.0,
              ),
              Text(
                "搜索",
                style: TextStyle(
                    color: Color(AppColors.fontColorGray), fontSize: Adapt.px(16.0)),
              )
            ],
          ),
        ),
      ),
      centerTitle: true,
      elevation: 0,
      actions: <Widget>[
        IconButton(
          alignment: Alignment.centerLeft,
          icon: SvgPicture.asset(
            'assets/icon/icon_classification.svg',
            width: Adapt.width(Constants.appBarIconSize),
            height: Adapt.height(Constants.appBarIconSize),
          ),
          onPressed: () {
            // 跳到分类页面
            Application.router.navigateTo(
              context,
              "/category",
              transition: TransitionType.native,
            );
          },
        )
      ],
      // leading自定义左侧导航显示的内容
      leading: IconButton(
        alignment: Alignment.centerRight,
        icon: SvgPicture.asset(
          'assets/icon/icon_trophy.svg',
          width: Adapt.width(Constants.appBarIconSize + 5.0),
          height: Adapt.height(Constants.appBarIconSize + 5.0),
        ),
        onPressed: () {
          // 跳到排行榜页面
          Application.router.navigateTo(
            context,
            "/leaderboard",
            transition: TransitionType.native,
          );
        },
      ),
    );
  }
}
