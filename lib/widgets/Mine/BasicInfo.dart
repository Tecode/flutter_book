import 'package:flutter/material.dart';
import 'package:flutter_book/helpers/constants.dart';
import 'package:flutter_svg/svg.dart';

class BasicInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String avatarUrl =
        'http://admin.soscoon.com/uploadImages/2bdcbd37d2fae6874cce4bba45d14573630925b1.jpeg';
    final List<Map<String, dynamic>> _statistics = [
      {'key': '关注', 'value': 818},
      {'key': '关注者', 'value': 900},
      {'key': '喜欢', 'value': 1000}
    ];

    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                width: 120.0,
                height: 120.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    color: Color(AppColors.themeColorGray),
                    image: DecorationImage(image: NetworkImage(avatarUrl))),
              ),
              SizedBox(
                width: 16.0,
              ),
              Expanded(
                  child: SizedBox(
                height: 120.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '爱死了你的吻',
                          style: TextStyle(
                              color: Color(AppColors.fontColor),
                              fontSize: 22.0),
                        ),
                        Text(
                          '四川，成都',
                          style: TextStyle(
                              color: Color(AppColors.fontColorGray),
                              fontSize: 14.0),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            print("object");
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    style: BorderStyle.solid,
                                    width: 1.0,
                                    color: Color(AppColors.fontColorGray)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4.0))),
                            padding: EdgeInsets.symmetric(
                                vertical: 7.0, horizontal: 15.0),
                            child: Row(
                              children: <Widget>[
                                SvgPicture.asset(
                                  'assets/icon/icon_share.svg',
                                  color: Color(AppColors.fontColorGray),
                                ),
                                SizedBox(width: 7.0),
                                Text(
                                  "分享",
                                  style: TextStyle(
                                      color: Color(AppColors.fontColorGray),
                                      fontSize: 13.0),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: _statistics.map((Map<String, dynamic> data) {
            return Container(
                child: Column(
              children: <Widget>[
                Text(
                  data['value'].toString(),
                  style: TextStyle(
                      color: Color(AppColors.fontColor),
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  data['key'],
                  style: TextStyle(
                      color: Color(AppColors.fontColorGray),
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold),
                )
              ],
            ));
          }).toList())
        ],
      ),
    );
  }
}
