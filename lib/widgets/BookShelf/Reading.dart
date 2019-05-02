import 'package:flutter/material.dart';
import 'package:flutter_book/widgets/common/CommonTitle.dart';
import 'package:flutter_book/widgets/common/BookCard.dart';

class Reading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CommonTitle(
          title: '正在阅读的书籍',
          onTap: () {},
        ),
        Container(
          height: 180.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              BookCard(
                title: '3书籍',
                width: 84.0,
                height: 125.0,
                author: '--',
                imageUrl:
                    'http://admin.soscoon.com/uploadImages/763229ced887b7e1e61a20aa1b14b42425c01e01.png',
              ),
              BookCard(
                title: '3书籍',
                width: 84.0,
                height: 125.0,
                author: '--',
                imageUrl:
                    'http://admin.soscoon.com/uploadImages/763229ced887b7e1e61a20aa1b14b42425c01e01.png',
              ),
              BookCard(
                title: '3书籍',
                width: 84.0,
                height: 125.0,
                author: '--',
                imageUrl:
                    'http://admin.soscoon.com/uploadImages/763229ced887b7e1e61a20aa1b14b42425c01e01.png',
              ),
            ],
          ),
        )
      ],
    );
  }
}
