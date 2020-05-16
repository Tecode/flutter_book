import 'package:flutter/material.dart';
import 'package:flutter_book/widgets/BookDetail/BookInformation.dart';
import 'package:flutter_book/widgets/BookDetail/Comment.dart';
import 'package:flutter_book/helpers/constants.dart';
import 'package:flutter_book/helpers/Adapt.dart';

class BookDetailContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(bottom: 80.0),
            child: Column(
              children: <Widget>[BookInfomation(), Comment()],
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            color: Color(0xff373A49),
            padding: EdgeInsets.symmetric(horizontal: Constants.pageMargin),
            width: MediaQuery.of(context).size.width,
            height: 80.0,
            child: Row(
              children: <Widget>[
                RaisedButton(
                  onPressed: () {},
                  textColor: Color(AppColors.fontColor),
                  color: Color(0xff9295A9),
                  child: SizedBox(
                    child: Center(
                      child: Text(
                        '试读',
                        style: TextStyle(height: 1.2, fontSize: Adapt.px(14.0)),
                      ),
                    ),
                    height: Adapt.height(47.0),
                  ),
                ),
                SizedBox(
                  width: 16.0,
                ),
                Expanded(
                  child: RaisedButton(
                    color: Color(AppColors.mainColor),
                    onPressed: () {},
                    textColor: Color(AppColors.fontColor),
                    child: SizedBox(
                      child: Center(
                        child: Text(
                          '立即购买',
                          style: TextStyle(height: 1.2, fontSize: Adapt.px(14.0)),
                        ),
                      ),
                      height: Adapt.height(47.0),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
