import 'package:flutter/material.dart';
import 'package:flutter_book/helpers/Adapt.dart';
import 'package:flutter_book/helpers/constants.dart';
import 'package:flutter_book/widgets/Find/ReadUser.dart';

class BookCover extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String _avatarUrl =
        'http://admin.soscoon.com/uploadImages/9b7c69ea2c754b0e0a8f3604f4ca4ad1d60e3c74.jpg';

    return Stack(children: <Widget>[
      ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                width: Adapt.width(196.0),
                height: Adapt.height(290.0),
                margin: EdgeInsets.only(top: Adapt.height(40.0)),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(4.0)),
                    color: Color(AppColors.themeColorGray),
                    image: DecorationImage(
                        image: NetworkImage(
                            'http://admin.soscoon.com/uploadImages/21dc88543e012af8e8d55440b9cbcf8b379c4206.png'))),
              ),
              Container(
                width: Adapt.width(168.0),
                margin: EdgeInsets.symmetric(vertical: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Empowering children and youth',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(AppColors.fontColor), fontSize: Adapt.px(18.0)),
                    ),
                    SizedBox(
                      height: 2.0,
                    ),
                    Text(
                      'Michael, Jost',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(AppColors.fontColorGray),
                          fontSize: Adapt.px(14.0)),
                    )
                  ],
                ),
              )
            ],
          ),
          ReadUser()
        ],
      ),
      Positioned(
        right: 0.0,
        bottom: 35.0,
        child: Container(
            height: Adapt.height(42.0),
            width: Adapt.width(124.0),
            padding: EdgeInsets.only(left: 4.0),
            margin: EdgeInsets.only(top: 4.0, bottom: 4.0),
            decoration: BoxDecoration(
                color: Color(AppColors.themeColorGray),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    bottomLeft: Radius.circular(20.0))),
            child: Row(
              children: <Widget>[
                Container(
                  width: Adapt.width(34.0),
                  height: Adapt.height(34.0),
                  margin: EdgeInsets.only(right: 4.0),
                  decoration: BoxDecoration(
                      color: Color(AppColors.themeColorGray),
                      borderRadius: BorderRadius.all(Radius.circular(40.0)),
                      image: DecorationImage(image: NetworkImage(_avatarUrl))),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '小明同学',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Color(AppColors.fontColor), fontSize: Adapt.px(14.0)),
                      ),
                      Text(
                        "Recommended",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Color(AppColors.fontColorGray),
                            fontSize: Adapt.px(12.0)),
                      )
                    ],
                  ),
                )
              ],
            )),
      )
    ]);
  }
}
