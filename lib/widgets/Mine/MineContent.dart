import 'package:flutter/material.dart';
import 'package:flutter_book/helpers/constants.dart';
import 'package:flutter_book/widgets/Mine/BasicInfo.dart';
import 'package:flutter_book/widgets/Mine/ListInfo.dart';

class MineContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.symmetric(horizontal: Constants.pageMargin),
      child: Column(
        children: <Widget>[BasicInfo(), ListInfo()],
      ),
    );
  }
}
