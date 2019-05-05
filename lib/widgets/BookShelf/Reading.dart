import 'package:flutter/material.dart';
import 'package:flutter_book/widgets/common/CommonTitle.dart';
import 'package:flutter_book/widgets/common/BookCard.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter_book/routers/application.dart';
import 'package:flutter_book/helpers/fluro_convert_util.dart';

class Reading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CommonTitle(
          title: '正在阅读的书籍',
          onTap: () {
            Application.router.navigateTo(
              context,
              "/detail?title=${FluroConvertUtils.fluroCnParamsEncode('正在阅读的书籍')}",
              transition: TransitionType.native,
              // transitionDuration: const Duration(milliseconds: 300),
            );
          },
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
                  title: '拥抱你的内在小孩',
                  width: 84.0,
                  height: 125.0,
                  titleMaxLines: 1,
                  author: 'Krishnananda Trobe、Amana Trobe',
                  gap: 10.0,
                  imageUrl:
                      'https://pic3.zhimg.com/80/v2-c402f7fc59fdbacc24ed45142ad957d2_hd.jpg',
                ),
              );
            }),
          ),
        )
      ],
    );
  }
}
