import 'package:flutter/material.dart';
import 'package:flutter_book/widgets/common/CommonTitle.dart';

class Finished extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CommonTitle(
          title: '已经阅读过书籍',
          onTap: () {},
        )
      ],
    );
  }
}
