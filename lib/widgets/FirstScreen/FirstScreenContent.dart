import 'dart:async';

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
        showChildOpacityTransition: false,
        onRefresh: () {
          final Completer<void> completer = Completer<void>();
          Timer(const Duration(seconds: 1), () {
            completer.complete();
          });
          return completer.future.then<void>((_) {
            // _scaffoldKey.currentState?.showSnackBar(SnackBar(
            //     content: const Text('Refresh complete'),
            //     action: SnackBarAction(
            //         label: 'RETRY',
            //         onPressed: () {
            //           _refreshIndicatorKey.currentState.show();
            //         })));
          });
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
