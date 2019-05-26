import 'package:flutter/material.dart';
import 'package:flutter_book/widgets/BookDetail/BookInformation.dart';
import 'package:flutter_book/helpers/constants.dart';

class BookDetailContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
            margin: EdgeInsets.symmetric(horizontal: Constants.pageMargin),
            child: Column(
              children: <Widget>[BookInfomation()],
            ))
      ],
    );
  }
}
