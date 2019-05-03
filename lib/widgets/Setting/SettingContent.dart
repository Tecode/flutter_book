import 'package:flutter/material.dart';
import 'package:flutter_book/helpers/constants.dart';

class SettingContent extends StatelessWidget {
  final List<Map<String, dynamic>> _listItem = const [
    {'value': '账号'},
    {'value': '消息'},
    {'value': '通知'},
    {'value': '清除缓存'},
    {'value': '反馈'},
    {'value': '关于我们'}
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: _listItem.map((Map<String, dynamic> data) {
      return ListTile(
        title: Text(
          data['value'],
          style: TextStyle(color: Color(AppColors.fontColor), fontSize: 18.0),
        ),
        onTap: () {},
        trailing: Icon(
          Icons.keyboard_arrow_right,
          color: Color(AppColors.fontColor),
        ),
      );
    }).toList());
  }
}
