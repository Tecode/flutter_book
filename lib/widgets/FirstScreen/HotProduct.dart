import 'package:flutter/material.dart';
import 'package:flutter_book/widgets/common/CommonTitle.dart';
import 'package:flutter_book/model/HotBooksData.dart';
import 'package:flutter_book/widgets/common/BookCard.dart';

class HotProduct extends StatelessWidget {
  final List<HotBooksModel> hotBooksData = HotBooksData().hotBooksData;

  @override
  Widget build(BuildContext context) {
    final List<Widget> _children = hotBooksData.map((data) {
      return BookCard(
          title: data.title, imageUrl: data.imageUrl, author: data.author);
    }).toList();

    return Column(
      children: <Widget>[
        CommonTitle(
          title: '热门图书',
        ),
        SizedBox(
          height: 30.0,
        ),
        Wrap(
          // 计算间隙
          spacing: (MediaQuery.of(context).size.width - 96 * 3 - 24 * 2) / 2,
          runSpacing: 30.0,
          alignment: WrapAlignment.spaceBetween,
          children: _children,
        ),
      ],
    );
  }
}
