import 'package:flutter/material.dart';
import 'package:flutter_book/helpers/constants.dart';
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
  double crownTextSize = 16.0;

  Widget get _followButton {
    if (widget.follow) {
      return Container(
        margin: EdgeInsets.only(top: 4.0),
        width: 60.0,
        height: 26.0,
        decoration: BoxDecoration(
            color: Color(AppColors.colorBlue2),
            borderRadius: BorderRadius.circular(4.0)),
        child: Align(
          child: Text(
            "已关注",
            style: TextStyle(color: Color(AppColors.fontColor), fontSize: 14.0),
          ),
        ),
      );
    }
    return Container(
      margin: EdgeInsets.only(top: 4.0),
      width: 60.0,
      height: 26.0,
      decoration: BoxDecoration(
          border: Border.all(color: Color(AppColors.boderGrayColor)),
          borderRadius: BorderRadius.circular(4.0)),
      child: Align(
        child: Text(
          "关注",
          style: TextStyle(color: Color(AppColors.fontColor), fontSize: 14.0),
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
                width: 60.0,
                height: 60.0,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 10.0,
              width: 60.0,
            ),
            Text(
              "阿明",
              style:
                  TextStyle(color: Color(AppColors.fontColor), fontSize: 16.0),
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
                  width: imageSize,
                  height: imageSize,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                  width: imageSize,
                  child: SvgPicture.asset(
                    'assets/icon/icon_crown.svg',
                    width: crownWidth,
                    height: crownHeight,
                    color: Color(widget.color),
                  ),
                  top: crowTop,
                  left: 0)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: circleSize,
                height: circleSize,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "2",
                    style: TextStyle(
                        color: Color(AppColors.fontColor),
                        fontSize: circleFontSize),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Color(widget.color),
                    borderRadius: BorderRadius.circular(40.0)),
              ),
              SizedBox(
                width: 4.0,
              ),
              Text(
                "大中华区",
                style: TextStyle(
                    color: Color(widget.color), fontSize: crownTextSize),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Text(
                  "46",
                  style: TextStyle(
                      color: Color(AppColors.fontColorGray),
                      fontSize: crownTextSize),
                ),
              ),
              SizedBox(
                width: 4.0,
              ),
              Text(
                "关注者",
                style: TextStyle(
                    color: Color(AppColors.fontColorGray),
                    fontSize: crownTextSize),
              )
            ],
          ),
        ],
      ),
    );
  }
}
