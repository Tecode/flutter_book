import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_book/helpers/constants.dart';

class SearchInputBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color(AppColors.themeColorGray)),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 16.0,
          ),
          SvgPicture.asset(
            'assets/icon/icon_search.svg',
            width: Constants.appBarIconSize + 2.0,
            height: Constants.appBarIconSize + 2.0,
            color: Color(AppColors.fontColorGray),
          ),
          Expanded(
            child: TextField(
              style: TextStyle(color: Color(AppColors.fontColor)),
              autofocus: true,
              onChanged: (value) {
                print(value);
              },
              decoration: InputDecoration(
                  hintText: '搜索...',
                  border: InputBorder.none,
                  fillColor: Color(AppColors.themeColorGray),
                  filled: true,
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 16.0)),
            ),
          )
        ],
      ),
    );
  }
}
