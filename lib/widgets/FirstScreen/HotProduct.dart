import 'package:flutter/material.dart';
import 'package:flutter_book/widgets/common/CommonTitle.dart';
import 'package:flutter_book/model/HotBooksData.dart';
import 'package:flutter_book/widgets/common/BookCard.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter_book/routers/application.dart';

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
          onTap: () {
            Application.router.navigateTo(
              context,
              "/detail",
              transition: TransitionType.native,
              // transitionDuration: const Duration(milliseconds: 300),
            );
          },
        ),
        SizedBox(
          height: 30.0,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          child: Wrap(
            // spacing: 20.0,
            runSpacing: 30.0,
            alignment: WrapAlignment.spaceBetween,
            children: _children,
          ),
        ),
      ],
    );
  }
}
