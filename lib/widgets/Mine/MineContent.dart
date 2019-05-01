import 'package:flutter/material.dart';
import 'package:flutter_book/helpers/constants.dart';
import 'package:flutter_book/widgets/Mine/BasicInfo.dart';
import 'package:flutter_book/widgets/Mine/ListInfo.dart';

class MineContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          BasicInfo(),
          SizedBox(
            height: 10.0,
          ),
          ListInfo()
        ],
      ),
    );
  }
}
