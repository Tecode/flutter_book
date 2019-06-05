import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter_book/helpers/constants.dart' show AppColors, Constants;

import './FirstScreen.dart';
import './Books.dart';
import './Find.dart';
import './Mine.dart';
import 'package:flutter_book/widgets/NavBar/FirstScreenNavBar.dart';
import 'package:flutter_book/widgets/NavBar/BooksNavBar.dart';
import 'package:flutter_book/widgets/NavBar/MineNavBar.dart';
import 'package:flutter_book/widgets/NavBar/FindNavBar.dart';

class Entrance extends StatefulWidget {
  @override
  _EntranceState createState() => _EntranceState();
}

class _EntranceState extends State<Entrance> {
  int _activeIndex = 0;
  List<Widget> _pages;
  List _navBars;
  // 计数,点击次返回键退出程序
  int _lastClickTime = 0;
  final List<String> _svgAssetUrl = [
    'assets/icon/icon_home.svg',
    'assets/icon/icon_find.svg',
    'assets/icon/icon_book.svg',
    'assets/icon/icon_myself.svg'
  ];

  initState() {
    super.initState();
    // 首屏的4个页面
    _pages = <Widget>[FirstScreen(), Find(), Books(), Mine()];
    // 导航栏
    _navBars = [FirstScreenNavBar(), FindNavBar(), BooksNavBar(), MineNavBar()];
  }

// 底部导航标签
  SvgPicture bottomIcon(int index) {
    return SvgPicture.asset(_svgAssetUrl[index],
        width: Constants.bottomIconWidth,
        height: Constants.bottomIconHeight,
        color: Color(
            _activeIndex == index ? AppColors.mainColor : AppColors.lightGray));
  }

  // 双击返回键退出应用
  Future<bool> _doubleExit() {
    int nowTime = new DateTime.now().microsecondsSinceEpoch;
    if (_lastClickTime != 0 && nowTime - _lastClickTime > 1500) {
      return new Future.value(true);
    } else {
      _lastClickTime = new DateTime.now().microsecondsSinceEpoch;
      new Future.delayed(const Duration(milliseconds: 1500), () {
        _lastClickTime = 0;
      });
      return new Future.value(false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _doubleExit,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: _navBars[_activeIndex],
        ),
        body: IndexedStack(
          index: _activeIndex,
          children: _pages,
        ),
        bottomNavigationBar: CupertinoTabBar(
          backgroundColor: Color(AppColors.themeColor),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: bottomIcon(0)),
            BottomNavigationBarItem(icon: bottomIcon(1)),
            BottomNavigationBarItem(icon: bottomIcon(2)),
            BottomNavigationBarItem(icon: bottomIcon(3))
          ],
          currentIndex: _activeIndex,
          onTap: (int index) {
            setState(() {
              _activeIndex = index;
            });
          },
        ),
      ),
    );
  }
}
