import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter_book/helpers/constants.dart' show AppColors, Constants;

import './FirstScreen.dart';
import './Books.dart';
import './Find.dart';
import './MySelf.dart';

class Entrance extends StatefulWidget {
  @override
  _EntranceState createState() => _EntranceState();
}

class _EntranceState extends State<Entrance> {
  int _activeIndex = 0;
  List<Widget> _pages;
  final List<String> _svgAssetUrl = [
    'assets/icon/icon_home.svg',
    'assets/icon/icon_find.svg',
    'assets/icon/icon_book.svg',
    'assets/icon/icon_myself.svg'
  ];

  initState() {
    super.initState();
    _pages = <Widget>[FirstScreen(), Find(), Books(), MySelf()];
  }

// 底部导航标签
  SvgPicture bottomIcon(int index) {
    return SvgPicture.asset(_svgAssetUrl[index],
        width: Constants.bottomIconWidth,
        height: Constants.bottomIconHeight,
        color: Color(
            _activeIndex == index ? AppColors.mainColor : AppColors.lightGray));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
