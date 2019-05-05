import 'package:flutter/material.dart';
import 'package:flutter_book/widgets/common/CommonBookCard.dart';
import 'package:flutter_book/helpers/constants.dart';

class DetailContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: Constants.pageMargin),
      child: ListView(
          children: List.generate(
        10,
        (int index) {
          return CommonBookCard(
            boxWidth: MediaQuery.of(context).size.width,
          );
        },
      )),
    );
  }
}
