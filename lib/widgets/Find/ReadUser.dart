import 'package:flutter/material.dart';
import 'package:flutter_book/helpers/constants.dart';

const List<String> _avatarUrl = [
  'http://admin.soscoon.com/uploadImages/2bdcbd37d2fae6874cce4bba45d14573630925b1.jpeg',
  'http://admin.soscoon.com/uploadImages/9b7c69ea2c754b0e0a8f3604f4ca4ad1d60e3c74.jpg',
  'http://admin.soscoon.com/uploadImages/936d36286e1e663add46b8e472ec5f20c03d5270.jpeg',
  'http://admin.soscoon.com/uploadImages/a705454629b1c61a6e606ab016ee8989cceba6ff.jpeg',
  'http://admin.soscoon.com/uploadImages/a705454629b1c61a6e606ab016ee8989cceba6ff.jpeg',
  'http://admin.soscoon.com/uploadImages/a705454629b1c61a6e606ab016ee8989cceba6ff.jpeg'
];

class ReadUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _avatarUrl.sublist(0, 4).map((url) {
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 3.0),
              width: 34.0,
              height: 34.0,
              decoration: BoxDecoration(
                  color: Color(AppColors.themeColorGray),
                  image: DecorationImage(image: NetworkImage(url)),
                  borderRadius: BorderRadius.all(Radius.circular(40.0))),
            );
          }).toList(),
        ),
        SizedBox(height: 16.0),
        Text(
          '457 位用户已学习',
          style: TextStyle(color: Color(AppColors.fontColor)),
        )
      ],
    );
  }
}
