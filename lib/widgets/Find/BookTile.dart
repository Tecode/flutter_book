import 'package:flutter/material.dart';
import 'package:flutter_book/helpers/constants.dart';

class BookTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        runSpacing: 24.0,
        spacing: 15.0,
        children: List.generate(4, (int index) {
          return _BookTile();
        }),
      ),
    );
  }
}

class _BookTile extends StatelessWidget {
  final String imageUrl =
      'http://admin.soscoon.com/uploadImages/21dc88543e012af8e8d55440b9cbcf8b379c4206.png';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
            width: 134.0,
            height: 200.0,
            decoration: BoxDecoration(
                color: Color(AppColors.themeColorGray),
                borderRadius: BorderRadius.all(Radius.circular(4.0)),
                image: DecorationImage(image: NetworkImage(this.imageUrl)))),
        SizedBox(height: 10.0),
        SizedBox(
          width: 134.0,
          child: Text(
            'Empowering children and youth',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14.0, color: Color(AppColors.fontColor)),
          ),
        )
      ],
    );
  }
}
