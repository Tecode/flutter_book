import 'package:flutter/material.dart';
import 'package:flutter_book/helpers/Adapt.dart';
import 'package:flutter_book/widgets/common/SearchInputBox.dart';
import 'package:flutter_book/helpers/constants.dart';
import 'package:flutter_book/widgets/common/TabContainer.dart';
import 'package:flutter_book/widgets/Category/Economic.dart';

class CategoryContent extends StatefulWidget {
  const CategoryContent({Key key}) : super(key: key);

  @override
  _CategoryContentState createState() => _CategoryContentState();
}

class _CategoryContentState extends State<CategoryContent>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

//  tab标签
  final List<Tab> myTabs = <Tab>[
    Tab(text: '经济'),
    Tab(text: '军事'),
    Tab(text: '艺术'),
    Tab(text: '科技'),
    Tab(text: '编程'),
    Tab(text: '科学教育'),
    Tab(text: '前端开发'),
    Tab(text: '后端开发'),
  ];

//  标签对应的内容
  final List<Widget> _listItem = [
    Economic(),
    Economic(),
    Economic(),
    Economic(),
    Economic(),
    Economic(),
    Economic(),
    Economic(),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController =
        TabController(vsync: this, initialIndex: 0, length: myTabs.length);
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Container(
        margin: EdgeInsets.only(
            top: 10.0, left: Constants.pageMargin, right: Constants.pageMargin),
        child: SearchInputBox(),
      ),
      Container(
        padding: EdgeInsets.only(top: 15.0),
        height: 80.0,
        child: DefaultTabController(
          length: myTabs.length,
          child: Scaffold(
            appBar: AppBar(
                titleSpacing: 0.0,
                elevation: 0.0,
                automaticallyImplyLeading: false,
                title: TabContainer(
                  width: double.infinity,
                  color: Color(AppColors.themeColor),
                  child: Stack(
                    children: <Widget>[
                      Positioned.fill(
                        top: null,
                        child: Container(
                          height: 1.0,
                          color: Color(AppColors.borderColor),
                        ),
                      ),
                      Align(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width - 26.0,
                          child: TabBar(
                            controller: _tabController,
                            indicator: UnderlineTabIndicator(
                              borderSide: BorderSide(
                                  color: Color(AppColors.mainColor),
                                  width: Adapt.width(3.0)),
                              insets: EdgeInsets.fromLTRB(15.0, 0.0, 10.0, 0.0),
                            ),
                            tabs: myTabs,
                            labelPadding: EdgeInsets.all(14.0),
                            isScrollable: true,
                            labelStyle: TextStyle(fontSize: Adapt.px(16.0)),
                            indicatorColor: Color(AppColors.mainColor),
                            unselectedLabelColor:
                                Color(AppColors.fontColorGray),
                          ),
                        ),
                      )
                    ],
                  ),
                )),
          ),
        ),
      ),
      Expanded(
        child: TabBarView(
          physics: const ScrollPhysics(),
          controller: _tabController,
          children: _listItem,
        ),
      )
    ]);
  }
}
