import 'package:flutter/material.dart';
import 'package:flutter_book/helpers/Adapt.dart';
import 'package:flutter_book/helpers/constants.dart';
import 'package:flutter_book/widgets/Mine/ListItem.dart';
import 'package:flutter_book/routers/application.dart';
import 'package:flutter_book/containers/Login.dart';
import 'package:fluro/fluro.dart';

class SettingContent extends StatefulWidget {
  @override
  _SettingContentState createState() => _SettingContentState();
}

class _SettingContentState extends State<SettingContent> {
  final List<Map<String, dynamic>> _listItem = const [
    {'title': '账号'},
    {'title': '消息', 'tip': 'info'},
    {'title': '通知'},
    {'title': '清除缓存', 'tip': 'cache', 'subTitle': '34M'},
    {'title': '反馈'},
    {'title': '关于我们', 'type': 'aboutUs'}
  ];
  bool _value = true;
  // 右边显示的信息
  Widget _rightWidget(String tip, Map<String, dynamic> data) {
    switch (tip) {
      case 'info':
        return Switch(
          value: _value,
          onChanged: (newValue) {
            setState(() {
              _value = newValue;
            });
          },
          activeColor: Color(AppColors.fontColor),
          activeTrackColor: Color(AppColors.mainColor),
          inactiveThumbColor: Color(AppColors.mainColor),
          inactiveTrackColor: Colors.black,
        );
      case 'cache':
        return Row(
          children: <Widget>[
            Text(
              data['subTitle'],
              style: TextStyle(
                  color: Color(AppColors.fontColor), fontSize: Adapt.px(12.0)),
            ),
            Icon(
              Icons.chevron_right,
              size: Adapt.width(24.0),
              color: Color(AppColors.fontColor),
            )
          ],
        );
      default:
        return Icon(
          Icons.chevron_right,
          size: Adapt.width(24.0),
          color: Color(AppColors.fontColor),
        );
    }
  }

  // 列表到操作
  void _onTap(String type) {
    switch (type) {
      case 'aboutUs':
        Application.router.navigateTo(
          context,
          "/aboutUs",
          transition: TransitionType.native,
        );
        break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: <Widget>[
        Column(
            children: _listItem.map((Map<String, dynamic> data) {
          return ListItem(
            height: Adapt.height(66.0),
            title: data['title'],
            rightWidget: _rightWidget(data['tip'], data),
            onTap: () {
              _onTap(data['type']);
            },
          );
        }).toList()),
        GestureDetector(
          onTap: () {
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => Login()),
                (route) => route == null);
          },
          child: Container(
            margin: EdgeInsets.only(top: Adapt.height(120.0)),
            padding: EdgeInsets.symmetric(vertical: Adapt.height(14.0)),
            width: double.infinity,
            decoration: BoxDecoration(color: Color(AppColors.themeColorGray)),
            child: Text(
              "登出",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(AppColors.fontColor),
                  fontSize: Adapt.px(20.0),
                  fontWeight: FontWeight.w400),
            ),
          ),
        ),
      ],
    ));
  }
}
