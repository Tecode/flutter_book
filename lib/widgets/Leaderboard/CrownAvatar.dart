import 'package:flutter/material.dart';
import 'package:flutter_book/helpers/constants.dart';
import 'package:flutter_svg/svg.dart';

/// 头像的类型，包含有皇冠的和没有皇冠的
///  normal | crownLarge | crownSmall
enum AvatarType {
  normal,
  crownLarge,
  crownSmall
}
class CrownAvatar extends StatefulWidget {
  final AvatarType crownAvatarType;
  final int color;

  CrownAvatar(
      {@required this.crownAvatarType, this.color = AppColors.colorRed}) {
        switch (this.crownAvatarType) {
          case AvatarType.normal:
          // this.imageSize = 4;
            break;
          
          default:
        }
  }

  @override
  _CrownAvatarState createState() => _CrownAvatarState();
}

class _CrownAvatarState extends State<CrownAvatar> {
  int imageSize = 75;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24.0),
      child: Column(
        children: <Widget>[
          Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(100.0),
                child: Image.network(
                  "http://admin.soscoon.com/uploadImages/0136afa3b04e2d754feaed525fa02f474dd08aa0.jpg",
                  width: 75.0,
                  height: 75.0,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                  width: 75.0,
                  child: SvgPicture.asset(
                    'assets/icon/icon_crown.svg',
                    width: 37.0,
                    height: 30.0,
                    color: Color(widget.color),
                  ),
                  top: -18.0,
                  left: 0)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 18.0,
                height: 18.0,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "2",
                    style: TextStyle(
                        color: Color(AppColors.fontColor), fontSize: 14.0),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Color(widget.color),
                    borderRadius: BorderRadius.circular(20.0)),
              ),
              SizedBox(
                width: 4.0,
              ),
              Text(
                "大中华区",
                style: TextStyle(color: Color(widget.color), fontSize: 16.0),
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
                      color: Color(AppColors.fontColorGray), fontSize: 16.0),
                ),
              ),
              SizedBox(
                width: 4.0,
              ),
              Text(
                "关注者",
                style: TextStyle(
                    color: Color(AppColors.fontColorGray), fontSize: 16.0),
              )
            ],
          ),
        ],
      ),
    );
  }
}
