import 'package:flutter/material.dart';
import 'package:flutter_book/widgets/common/CommonTitle.dart';

class Recommend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CommonTitle(
          title: "推荐",
          onTap: () => {print('点击')},
        ),
        Container(
          height: 120.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[Text("测试"), Text("测试"), Text("测试"), Text("测试")],
          ),
        )
      ],
    );
  }
}
