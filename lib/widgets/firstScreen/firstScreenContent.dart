import 'package:flutter/material.dart';
import 'package:flutter_book/widgets/firstScreen/Recommend.dart';
import 'package:flutter_book/widgets/firstScreen/HotProduct.dart';
import 'package:flutter_book/widgets/firstScreen/SearchNouns.dart';
import 'package:flutter_book/widgets/firstScreen/PopularBooks.dart';
import 'package:flutter_book/helpers/constants.dart';

class FirstScreenContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
              left: Constants.pageMargin,
              right: Constants.pageMargin,
              top: 20.0,
              bottom: 40),
          child: Column(
            children: <Widget>[
              Recommend(),
              HotProduct(),
              SearchNouns(),
              PopularBooks()
            ],
          ),
        ),
      ],
    );
  }
}
