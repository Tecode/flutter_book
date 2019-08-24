import 'package:flutter/material.dart';
import 'package:flutter_book/widgets/common/CommentBox.dart';
import 'package:flutter_book/helpers/constants.dart';
import 'package:flutter_svg/svg.dart';

class Comment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: Constants.pageMargin),
            padding: EdgeInsets.only(
                right: Constants.pageMargin, top: 24.0, bottom: 30.0),
            decoration: BoxDecoration(
                border: Border(
              top: BorderSide(color: Color(AppColors.borderColor), width: 1.0),
            )),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text("评价",
                        style: TextStyle(
                            color: Color(AppColors.fontColor),
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500)),
                    SizedBox(
                      width: 16.0,
                    ),
                    Text('215 条评价',
                        style: TextStyle(
                            color: Color(0xff007AFF),
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500))
                  ],
                ),
                SvgPicture.asset(
                  'assets/icon/icon_write_conment.svg',
                  width: 16.0,
                  height: 18.0,
                  color: Color(AppColors.fontColor),
                )
              ],
            ),
          ),
          Column(
            children: List.generate(10, (int indx) => CommentBox()),
          )
        ],
      ),
    );
  }
}
