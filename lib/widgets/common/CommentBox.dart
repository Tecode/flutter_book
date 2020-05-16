import 'package:flutter/material.dart';
import 'package:flutter_book/helpers/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_book/helpers/Adapt.dart';

class CommentBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: Constants.pageMargin, top: Adapt.height(24.0)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(right: 12.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(Adapt.width(30.0)),
                child: FadeInImage.assetNetwork(
                    width: Adapt.width(30.0),
                    height: Adapt.height(30.0),
                    image:
                        'http://cdn.duitang.com/uploads/item/201407/24/20140724190906_MCkXs.thumb.700_0.jpeg',
                    placeholder: 'assets/images/image_none.gif',
                    fit: BoxFit.cover),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(bottom: 10.0),
                    child: Text(
                      '阿明',
                      style: TextStyle(
                          color: Color(AppColors.commentTitleColor),
                          fontSize: 14.0,
                          height: 1.4,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: Constants.pageMargin),
                    child: Text(
                        '手机收到后用了一段时间，各方面感觉都不错，运行速度快，拍照也清晰，电池也比较耐用，手机的颜值很高，这是买给高一女儿用的，孩子很喜欢！',
                        style: TextStyle(
                            color: Color(AppColors.commentContentColor),
                            fontSize: 12.0,
                            height: 1.3,
                            fontWeight: FontWeight.w400)),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 12.0, bottom: 16.0),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Color(AppColors.themeColorGray)))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('12-04 21:20',
                            style: TextStyle(
                                color: Color(0xff656A7B),
                                fontSize: 11.0,
                                fontWeight: FontWeight.w400)),
                        Row(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                SvgPicture.asset(
                                  'assets/icon/icon_comment_like.svg',
                                  width: 10.0,
                                  height: 10.0,
                                  color: Color(0xff656A7B),
                                ),
                                SizedBox(
                                  width: 4.0,
                                ),
                                Text('138',
                                    style: TextStyle(
                                        color: Color(0xff656A7B),
                                        fontSize: 11.0,
                                        fontWeight: FontWeight.w400))
                              ],
                            ),
                            SizedBox(
                              width: 18.0,
                            ),
                            Row(
                              children: <Widget>[
                                SvgPicture.asset(
                                  'assets/icon/icon_comment_message.svg',
                                  width: 10.0,
                                  height: 10.0,
                                  color: Color(0xff656A7B),
                                ),
                                SizedBox(
                                  width: 4.0,
                                ),
                                Text('69',
                                    style: TextStyle(
                                        color: Color(0xff656A7B),
                                        fontSize: 11.0,
                                        fontWeight: FontWeight.w400)),

                                SizedBox(
                                  width: Constants.pageMargin,
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
