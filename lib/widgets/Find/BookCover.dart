import 'package:flutter/material.dart';
import 'package:flutter_book/helpers/constants.dart';
import 'package:flutter_book/widgets/Find/ReadUser.dart';

class BookCover extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 196.0,
            height: 290.0,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'http://admin.soscoon.com/uploadImages/21dc88543e012af8e8d55440b9cbcf8b379c4206.png'))),
          ),
          Container(
            width: 168.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Empowering children and youth',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(AppColors.fontColor), fontSize: 18.0),
                ),
                Text(
                  'Michael, Jost',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(AppColors.fontColorGray), fontSize: 18.0),
                )
              ],
            ),
          ),
          ReadUser()
        ],
      ),
    );
  }
}
