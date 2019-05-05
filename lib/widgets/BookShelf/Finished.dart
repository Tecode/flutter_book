import 'package:flutter/material.dart';
import 'package:flutter_book/widgets/common/CommonTitle.dart';
import 'package:flutter_book/widgets/common/BookCard.dart';

class Finished extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CommonTitle(
          title: '已经阅读过书籍',
          onTap: () {},
        ),
        Container(
          height: 180.0,
          margin: EdgeInsets.only(top: 24.0),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(10, (int index) {
              return Padding(
                padding: EdgeInsets.only(right: 15.0),
                child: BookCard(
                  title: '爱的博弈',
                  width: 84.0,
                  height: 125.0,
                  titleMaxLines: 1,
                  author: '约翰•戈特曼；娜恩•西尔弗',
                  gap: 10.0,
                  imageUrl:
                      'https://pic2.zhimg.com/80/v2-13f0b0528415120ce7966860e7f93c0c_hd.jpg',
                ),
              );
            }),
          ),
        )
      ],
    );
  }
}
