import 'package:flutter/material.dart';
import 'package:flutter_book/helpers/Adapt.dart';
import 'package:flutter_book/helpers/constants.dart';

class BookTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        child: Center(
          child: Wrap(
            runSpacing: Adapt.px(-20.0),
            spacing: Adapt.width(14.0),
            children: List.generate(6, (int index) {
              return _BookTile();
            }),
          ),
        ),
      );
}

class _BookTile extends StatelessWidget {
  final String imageUrl =
      'http://admin.soscoon.com/uploadImages/21dc88543e012af8e8d55440b9cbcf8b379c4206.png';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: Adapt.height(20.0)),
      child: Column(
        children: <Widget>[
          SizedBox(height: Adapt.height(40.0)),
          Container(
              width: Adapt.width(134.0),
              height: Adapt.height(200.0),
              decoration: BoxDecoration(
                  color: Color(AppColors.themeColorGray),
                  borderRadius: BorderRadius.all(Radius.circular(4.0)),
                  image: DecorationImage(image: NetworkImage(this.imageUrl)))),
          SizedBox(
            width: Adapt.width(134.0),
            child: Text(
              'Empowering children and youth',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: Adapt.px(14.0), color: Color(AppColors.fontColor)),
            ),
          ),
        ],
      ),
    );
  }
}
