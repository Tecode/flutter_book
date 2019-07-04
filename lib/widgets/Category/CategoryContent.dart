import 'package:flutter/material.dart';
import 'package:flutter_book/widgets/common/SearchInputBox.dart';

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
    return ListView(
      children: <Widget>[
        SearchInputBox(),
        Container(
            height: 600.0,
            child: DefaultTabController(
              length: myTabs.length,
              child: Scaffold(
                appBar: AppBar(
                  leading: Text(""),
                  bottom: TabBar(
                    tabs: myTabs,
                    isScrollable: true,
                  ),
                ),
                body: TabBarView(
                  children: myTabs.map((Tab tab) {
                    return Center(child: Text(tab.text));
                  }).toList(),
                ),
              ),
            ))
      ],
    );
  }
}
