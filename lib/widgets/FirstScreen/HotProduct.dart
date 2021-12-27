// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter_book/widgets/common/CommonTitle.dart';
import 'package:flutter_book/model/HotBooksData.dart';
import 'package:flutter_book/widgets/common/BookCard.dart';
import 'package:fluro/fluro.dart';
import 'package:provider/provider.dart';
import 'package:flutter_book/models/common.dart';
import 'package:flutter_book/routers/application.dart';
import 'package:flutter_book/helpers/fluro_convert_util.dart';
import 'package:flutter_book/stores/homeStore.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HotProduct extends StatelessWidget {
  final List<HotBooksModel> hotBooksData = HotBooksData().hotBooksData;

  @override
  Widget build(BuildContext context) {
    final homeStore = Provider.of<HomeStore>(
      context,
      listen: false,
    );

    return Column(
      children: <Widget>[
        CommonTitle(
          title: '热门图书',
          onTap: () {
            Application.router.navigateTo(
              context,
              "/detail?title=${FluroConvertUtils.fluroCnParamsEncode('热门图书')}&type=hotProduct",
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
          child: Observer(
            builder: (_) {
              List<CommonData> hotBooksData = homeStore.hotBooksData?.data;
              return hotBooksData == null
                  ? Text("正在获取数据")
                  : Wrap(
                      // spacing: 20.0,
                      runSpacing: 30.0,
                      alignment: WrapAlignment.spaceBetween,
                      children: hotBooksData
                          .take(6)
                          .map((CommonData data) => BookCard(
                              title: data.title,
                              imageUrl: data.bookImage,
                              author: data.author))
                          .toList(),
                    );
            },
          ),
        ),
      ],
    );
  }
}
