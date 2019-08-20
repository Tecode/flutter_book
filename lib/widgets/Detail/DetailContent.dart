import 'package:flutter/material.dart';
import 'package:flutter_book/widgets/common/CommonBookCard.dart';

class DetailContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        10,
        (int index) {
          return CommonBookCard(
            boxWidth: MediaQuery.of(context).size.width,
          );
        },
      ),
    );
  }
}
