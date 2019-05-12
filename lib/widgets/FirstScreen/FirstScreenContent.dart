import 'package:flutter/material.dart';
import 'package:flutter_book/widgets/FirstScreen/Recommend.dart';
import 'package:flutter_book/widgets/FirstScreen/HotProduct.dart';
import 'package:flutter_book/widgets/FirstScreen/SearchNouns.dart';
import 'package:flutter_book/widgets/FirstScreen/PopularBooks.dart';
import 'package:flutter_book/helpers/constants.dart';
import 'package:flutter_book/widgets/common/PullRefresh.dart';

class FirstScreenContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PullRefresh(
        onRefresh: () {
          print('refresh');
        },
        child: ListView(
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
        ));
  }
}
