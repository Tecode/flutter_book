import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_book/helpers/constants.dart';
import 'package:flutter_book/routers/application.dart';
import 'package:fluro/fluro.dart';

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
          padding:
              EdgeInsets.only(right: 14.0, left: 14.0, top: 4.0, bottom: 6.0),
          decoration: BoxDecoration(
              color: Color(AppColors.themeColorGray),
              borderRadius: BorderRadius.all(Radius.circular(4.0))),
          child: Row(
            children: <Widget>[
              SvgPicture.asset('assets/icon/icon_search.svg',
                  width: Constants.appBarIconSize + 2.0,
                  height: Constants.appBarIconSize + 2.0),
              SizedBox(
                width: 10.0,
                height: 1.0,
              ),
              Text(
                "搜索",
                style: TextStyle(
                    color: Color(AppColors.fontColorGray), fontSize: 16.0),
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
    );
  }
}
