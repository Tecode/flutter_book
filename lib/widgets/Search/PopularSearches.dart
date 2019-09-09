import 'package:flutter/material.dart';
import 'package:flutter_book/widgets/common/CommonTitle.dart';
import 'package:flutter_book/widgets/common/BookCard.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter_book/routers/application.dart';
import 'package:flutter_book/helpers/fluro_convert_util.dart';
import 'package:flutter_book/helpers/Adapt.dart';

class PopularSearches extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CommonTitle(
          title: '热门搜索',
          onTap: () {
            Application.router.navigateTo(
              context,
              "/detail?title=${FluroConvertUtils.fluroCnParamsEncode('热门搜索')}",
              transition: TransitionType.native,
              // transitionDuration: const Duration(milliseconds: 300),
            );
          },
        ),
        Container(
          height: Adapt.height(180.0),
          margin: EdgeInsets.only(top: Adapt.height(24.0)),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(10, (int index) {
              return Padding(
                padding: EdgeInsets.only(right: Adapt.width(15.0)),
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
