// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_book/helpers/Adapt.dart';
import 'package:flutter_book/helpers/constants.dart';

class ListItem extends StatelessWidget {
  final String title;
  final String subTitle;
  final double height;
  final Widget rightWidget;
  final GestureTapCallback onTap;

  ListItem(
      {this.title,
      this.subTitle,
      this.height = 80.0,
      this.onTap,
      this.rightWidget = const SizedBox()});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(right: Constants.pageMargin),
        margin: EdgeInsets.only(left: Constants.pageMargin),
        height: Adapt.height(height),
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
                    width: Adapt.width(0.5),
                    color: Color(AppColors.borderColor)))),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            subTitle == null
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        title,
                        style: TextStyle(
                            color: Color(AppColors.fontColor),
                            fontSize: Adapt.px(16.0)),
                      ),
                    ],
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        title,
                        style: TextStyle(
                            color: Color(AppColors.fontColor),
                            fontSize: Adapt.px(16.0)),
                      ),
                      SizedBox(
                        height: Adapt.height(4.0),
                      ),
                      Text(
                        subTitle,
                        style: TextStyle(color: Color(AppColors.fontColorGray)),
                      )
                    ],
                  ),
            this.rightWidget
          ],
        ),
      ),
    );
  }
}
