import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_book/helpers/Adapt.dart';
import 'package:flutter_book/helpers/constants.dart';
import 'package:flutter_book/widgets/Mine/ListItem.dart';

class ListInfo extends StatelessWidget {
  final List<Map<String, dynamic>> _list = const [
    {'title': '我的购买'},
    {'title': '我的收藏', 'tip': '撰写'},
    {'title': '余额：¥360', 'tip': '充值'},
    {'title': '收到的信息', 'subTitle': 'Acceptable information', 'tip': 'info'},
    {
      'title': 'My book review',
      'subTitle': 'Write your own book review',
      'tip': '2'
    },
    {'title': '帮助和反馈', 'subTitle': '及时帮助您解决问题'},
  ];

  // 右边显示的信息
  Widget _rightWidget(String tip) {
    switch (tip) {
      case 'info':
        return Container(
          width: Adapt.width(8.0),
          height: Adapt.height(8.0),
          decoration: BoxDecoration(
              color: Color(AppColors.colorBlue2),
              borderRadius: BorderRadius.circular(Adapt.width(8.0))),
        );
      case '撰写':
        return Container(
          decoration: BoxDecoration(
              border:
                  Border.all(width: 1.0, color: Color(AppColors.colorBlue2)),
              borderRadius: BorderRadius.circular(20.0)),
          padding: EdgeInsets.symmetric(
              horizontal: Adapt.width(16.0), vertical: Adapt.width(2.0)),
          child: Text(
            tip,
            style: TextStyle(
                color: Color(AppColors.colorBlue2), fontSize: Adapt.px(12.0)),
          ),
        );
      case '充值':
        return Container(
          decoration: BoxDecoration(
              color: Color(AppColors.mainColor),
              borderRadius: BorderRadius.circular(4.0)),
          padding: EdgeInsets.symmetric(
              horizontal: Adapt.width(14.0), vertical: Adapt.width(8.0)),
          child: Text(
            tip,
            style: TextStyle(
                color: Color(AppColors.fontColor), fontSize: Adapt.px(12.0)),
          ),
        );
      default:
        return SizedBox();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _list.map((Map<String, dynamic> data) {
        return ListItem(
          title: data['title'],
          subTitle: data['subTitle'],
          rightWidget: _rightWidget(data['tip']),
        );
      }).toList(),
    );
  }
}
