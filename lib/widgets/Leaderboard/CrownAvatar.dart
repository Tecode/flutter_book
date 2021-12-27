// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter_book/helpers/constants.dart';
import 'package:flutter_book/helpers/Adapt.dart';
import 'package:flutter_svg/svg.dart';

/// 头像的类型，包含有皇冠的和没有皇冠的
///  normal | crownLarge | crownSmall
enum AvatarType { normal, crownLarge, crownSmall }

class CrownAvatar extends StatefulWidget {
  final AvatarType crownAvatarType;
  final int color;
  final String avatarUrl;
  final bool follow;

  CrownAvatar(
      {@required this.crownAvatarType,
      @required this.avatarUrl,
      this.follow = false,
      this.color = AppColors.colorRed});

  @override
  _CrownAvatarState createState() => _CrownAvatarState();
}

class _CrownAvatarState extends State<CrownAvatar> {
  double imageSize = 75.0;
  // 皇冠的宽高
  double crownWidth = 37.0;
  double crownHeight = 30.0;
  // 距离顶部的高度
  double crowTop = -18.0;
  // 圆圈的大小
  double circleSize = 18.0;
  // 圆圈里面的字体大小
  double circleFontSize = 14.0;
  double crownTextSize = 12.0;

  Widget get _followButton {
    if (widget.follow) {
      return Container(
        margin: EdgeInsets.only(top: 4.0),
        width: Adapt.width(60.0),
        height: Adapt.height(26.0),
        decoration: BoxDecoration(
            color: Color(AppColors.colorBlue2),
            borderRadius: BorderRadius.circular(4.0)),
        child: Align(
          child: Text(
            "已关注",
            style: TextStyle(
                color: Color(AppColors.fontColor),
                fontSize: Adapt.px(14.0),
                fontWeight: FontWeight.w400),
          ),
        ),
      );
    }
    return Container(
      margin: EdgeInsets.only(top: 4.0),
      width: Adapt.width(60.0),
      height: Adapt.height(26.0),
      decoration: BoxDecoration(
          border: Border.all(color: Color(AppColors.boderGrayColor)),
          borderRadius: BorderRadius.circular(4.0)),
      child: Align(
        child: Text(
          "关注",
          style: TextStyle(
              color: Color(AppColors.fontColor), fontSize: Adapt.px(14.0)),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // 判断头像的类型给出对应的尺寸
    if (widget.crownAvatarType == AvatarType.crownLarge) {
      this.imageSize = 100.0;
      this.crownWidth = 67.0;
      this.crownHeight = 53.0;
      this.crowTop = -36.0;
      this.circleSize = 24.0;
      this.circleFontSize = 16.0;
      this.crownTextSize = 18.0;
    }
    // 返回有关注按钮的头像组件
    if (widget.crownAvatarType == AvatarType.normal) {
      return Container(
        margin: EdgeInsets.only(right: 24.0),
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(40.0),
              child: Image.network(
                widget.avatarUrl,
                width: Adapt.width(60.0),
                height: Adapt.height(60.0),
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: Adapt.height(10.0),
              width: Adapt.width(60.0),
            ),
            Text(
              "阿明",
              style: TextStyle(
                  color: Color(AppColors.fontColor), fontSize: Adapt.px(16.0)),
            ),
            _followButton,
          ],
        ),
      );
    }
    return Container(
      padding: EdgeInsets.only(top: 60.0, bottom: 37.0),
      child: Column(
        children: <Widget>[
          Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(100.0),
                child: Image.network(
                  widget.avatarUrl,
                  width: Adapt.width(imageSize),
                  height: Adapt.height(imageSize),
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                  width: Adapt.width(imageSize),
                  child: SvgPicture.asset(
                    'assets/icon/icon_crown.svg',
                    width: Adapt.width(crownWidth),
                    height: Adapt.height(crownHeight),
                    color: Color(widget.color),
                  ),
                  top: Adapt.height(crowTop),
                  left: 0)
            ],
          ),
          SizedBox(
            height: Adapt.height(16.0),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: Adapt.width(circleSize),
                height: Adapt.height(circleSize),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "2",
                    style: TextStyle(
                        color: Color(AppColors.fontColor),
                        fontSize: Adapt.px(circleFontSize)),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Color(widget.color),
                    borderRadius: BorderRadius.circular(40.0)),
              ),
              SizedBox(
                width: Adapt.width(4.0),
              ),
              Text(
                "阿明",
                style: TextStyle(
                    color: Color(widget.color),
                    fontSize: Adapt.px(crownTextSize)),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Text(
                  "50",
                  style: TextStyle(
                      color: Color(AppColors.fontColorGray),
                      fontSize: Adapt.px(crownTextSize)),
                ),
              ),
              SizedBox(
                width: Adapt.width(4.0),
              ),
              Text(
                "关注者",
                style: TextStyle(
                    color: Color(AppColors.fontColorGray),
                    fontSize: Adapt.px(crownTextSize - 2.0)),
              )
            ],
          ),
        ],
      ),
    );
  }
}
