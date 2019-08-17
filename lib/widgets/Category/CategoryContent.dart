import 'package:flutter/material.dart';
import 'package:flutter_book/widgets/common/SearchInputBox.dart';
import 'package:flutter_book/helpers/constants.dart';
import 'package:flutter_book/widgets/common/TabContainer.dart';

class CategoryContent extends StatefulWidget {
  const CategoryContent({Key key}) : super(key: key);
  @override
  _CategoryContentState createState() => _CategoryContentState();
}

class _CategoryContentState extends State<CategoryContent>
    with SingleTickerProviderStateMixin {
  final List<Tab> myTabs = <Tab>[
    Tab(text: 'Economic02'),
    Tab(text: 'Military'),
    Tab(text: 'Art'),
    Tab(text: 'Movement'),
    Tab(text: 'Design'),
    Tab(text: 'Science and technology'),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: <Widget>[
        Container(
          margin: EdgeInsets.only(
              top: 10.0,
              left: Constants.pageMargin,
              right: Constants.pageMargin),
          child: SearchInputBox(),
        ),
        Container(
            padding: EdgeInsets.only(top: 15.0),
            height: 1600.0,
            child: DefaultTabController(
              length: myTabs.length,
              child: Scaffold(
                appBar: AppBar(
                    elevation: 0.5,
                    automaticallyImplyLeading: false,
                    title: TabContainer(
                      color: Color(AppColors.themeColor),
                      child: TabBar(
                        indicator: UnderlineTabIndicator(
                          borderSide: BorderSide(
                              color: Color(AppColors.mainColor), width: 4.0),
                          insets: EdgeInsets.fromLTRB(15.0, 0.0, 10.0, 0.0),
                        ),
                        tabs: myTabs,
                        labelPadding: EdgeInsets.all(16.0),
                        isScrollable: true,
                        labelStyle: TextStyle(fontSize: 14.0),
                        indicatorColor: Color(AppColors.mainColor),
                        unselectedLabelColor: Color(AppColors.fontColorGray),
                      ),
                    )),
                body: TabBarView(
                  children: myTabs.map((Tab tab) {
                    return Center(child: Text(tab.text));
                  }).toList(),
                ),
              ),
            ))
      ]),
    );
  }
}
