// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter_book/helpers/Adapt.dart';

//import 'package:flutter_book/helpers/constants.dart';
import 'package:flutter_book/widgets/Mine/BasicInfo.dart';
import 'package:flutter_book/widgets/Mine/ListInfo.dart';

class MineContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            BasicInfo(),
            SizedBox(
              height: Adapt.height(16.0),
            ),
            ListInfo()
          ],
        ),
      ),
    );
  }
}
