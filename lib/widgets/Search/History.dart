import 'package:flutter/material.dart';
import 'package:flutter_book/widgets/common/CommonTitle.dart';

class History extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CommonTitle(
          title: '搜索历史',
        )
      ],
    );
  }
}
