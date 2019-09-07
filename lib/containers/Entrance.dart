import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_book/models/common.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:flutter_book/stores/homeStore.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_book/helpers/Adapt.dart';
import 'package:flutter_book/helpers/constants.dart' show AppColors, Constants;

import './FirstScreen.dart';
import './Books.dart';
import './Find.dart';
import './Mine.dart';
import 'package:flutter_book/widgets/NavBar/FirstScreenNavBar.dart';
import 'package:flutter_book/widgets/NavBar/BooksNavBar.dart';
import 'package:flutter_book/widgets/NavBar/MineNavBar.dart';
import 'package:flutter_book/widgets/NavBar/FindNavBar.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

class Entrance extends StatefulWidget {
  @override
  _EntranceState createState() => _EntranceState();
}

class _EntranceState extends State<Entrance> {
  // 版本信息
  VersionData versionData;
  int _activeIndex = 0;
  List<Widget> _pages;
  List _navBars;
  String _localVersion;

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
    /**
     * 获取本地的版本信息
     */
    _loadVersion();

    Future.delayed(Duration.zero, () {
      /**
       * 发送获取版本信息的请求
       * 获取数据，查看版本号
       * */
      Provider.of<HomeStore>(context).getVersion();
    });
  }

// 底部导航标签
  SvgPicture bottomIcon(int index) {
    return SvgPicture.asset(_svgAssetUrl[index],
        width: Adapt.width(Constants.bottomIconWidth),
        height: Adapt.height(Constants.bottomIconHeight),
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

  // 获取本地存储的版本信息
  _loadVersion() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _localVersion = prefs.getString('app_veriosn') ?? '1.0.0';
    });
  }

  // 保存版本信息
  _saveVersion(String appVeriosn) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('app_veriosn', appVeriosn);
    setState(() {
      _localVersion = appVeriosn;
    });
  }

  // 跳转链接
  _launchURL() async {
    const url = 'https://www.pgyer.com/x5lH';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        String _version = Provider.of<HomeStore>(context)?.versionData?.version;
        List<String> _versionList =
            Provider.of<HomeStore>(context)?.versionData?.data;

        if (_version != null && _version != _localVersion) {
          // 版本更新弹窗
          Future.delayed(Duration.zero, () {
            showDialog(
                context: context,
                builder: (_) => Scaffold(
                      backgroundColor: Colors.transparent,
                      body: Center(
                        child: Container(
                          width: 320.0,
                          height: 420.0,
                          padding: EdgeInsets.all(20.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Column(
                            children: <Widget>[
                              Text(
                                '新版本升级',
                                style: TextStyle(
                                    color: Color(0xff202326), fontSize: 24.0),
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              Expanded(
                                child: SingleChildScrollView(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: _versionList
                                        .map((String info) => Text(
                                              info,
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  fontSize: 18.0, height: 1.3),
                                            ))
                                        .toList(),
                                  ),
                                ),
                              ),
                              RaisedButton(
                                elevation: 0.0,
                                child: SizedBox(
                                  width: double.infinity,
                                  height: 50.0,
                                  child: Text(
                                    '暂不更新',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(height: 2.0),
                                  ),
                                ),
                                onPressed: () {
                                  _saveVersion(_version);
                                  Navigator.of(context, rootNavigator: true)
                                      .pop();
                                },
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              RaisedButton(
                                elevation: 0.0,
                                child: SizedBox(
                                  width: double.infinity,
                                  height: 50.0,
                                  child: Text(
                                    '立即更新',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white, height: 2.0),
                                  ),
                                ),
                                color: Color(AppColors.mainColor),
                                onPressed: () {
                                  _saveVersion(_version);
                                  _launchURL();
                                  Navigator.of(context, rootNavigator: true)
                                      .pop();
                                },
                              )
                            ],
                          ),
                        ),
                      ),
                    ));
          });
        }
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
      },
    );
  }
}
