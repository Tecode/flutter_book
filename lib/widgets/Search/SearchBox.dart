import 'package:flutter/material.dart';
import 'package:flutter_book/helpers/constants.dart';
import 'package:flutter_svg/svg.dart';

class SearchBox extends StatelessWidget {
  final TextEditingController _searchController = TextEditingController();
  String _searchContent = "";

  SearchBox() {
    _searchController.addListener(_searchListen);
  }

  void _searchListen() {
    if (_searchController.text.isEmpty) {
      _searchContent = "";
    } else {
      _searchContent = _searchController.text;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
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
                    autofocus: true,
                    onChanged: (value) {
                      print(value);
                    },
                    controller: _searchController,
                    decoration: InputDecoration(
                        hintText: '搜索...',
                        border: InputBorder.none,
                        fillColor: Color(AppColors.themeColorGray),
                        filled: true,
                        hintStyle:
                            TextStyle(color: Colors.grey, fontSize: 16.0)),
                  ),
                )
              ],
            ),
          ),
        ),
        GestureDetector(
          child: Container(
            padding: EdgeInsets.only(left: 16.0, top: 16.0, bottom: 16.0),
            child: Text(
              "取消",
              style: TextStyle(
                color: Color(AppColors.fontColorGray),
                fontSize: 14.0,
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
