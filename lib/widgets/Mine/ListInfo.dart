import 'package:flutter/material.dart';
import 'package:flutter_book/helpers/constants.dart';

class ListInfo extends StatelessWidget {
  final List<Map<String, dynamic>> _list = const [
    {'title': '我的购买'},
    {'title': '我的收藏'},
    {'title': '余额：¥360'},
    {'title': '收到的信息', 'subtitle': '接受的信息'},
    {'title': '帮助和反馈'},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _list.map((Map<String, dynamic> data) {
        return ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: Constants.pageMargin, vertical: 5.0),
          title: Text(
            data['title'],
            style: TextStyle(color: Color(AppColors.fontColor)),
          ),
          trailing: Icon(
            Icons.keyboard_arrow_right,
            color: Color(AppColors.fontColor),
          ),
          onTap: () {},
        );
      }).toList(),
    );
  }
}
