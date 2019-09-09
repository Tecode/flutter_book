import 'package:flutter/material.dart';
import 'package:flutter_book/helpers/Adapt.dart';
import 'package:flutter_book/helpers/constants.dart';
import 'package:flutter_book/widgets/common/SearchInputBox.dart';

class SearchBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: SearchInputBox(),
        ),
        GestureDetector(
          child: Container(
            padding: EdgeInsets.only(
                left: Adapt.width(16.0),
                top: Adapt.width(16.0),
                bottom: Adapt.height(16.0)),
            child: Text(
              "取消",
              style: TextStyle(
                color: Color(AppColors.fontColorGray),
                fontSize: Adapt.px(14.0),
              ),
            ),
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
