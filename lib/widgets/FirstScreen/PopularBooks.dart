import 'package:flutter/material.dart';
import 'package:flutter_book/widgets/common/CommonTitle.dart';
import 'package:flutter_book/widgets/common/CommonBookCard.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter_book/routers/application.dart';
import 'package:flutter_book/helpers/fluro_convert_util.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_book/models/common.dart';
import 'package:provider/provider.dart';
import 'package:flutter_book/stores/homeStore.dart';

class PopularBooks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final homeStore = Provider.of<HomeStore>(context);
    List<CommonData> popularBookData = homeStore.recommendData?.data;
    return Column(
      children: <Widget>[
        SizedBox(
          height: 32.0,
        ),
        CommonTitle(
          title: '最受欢迎',
          onTap: () {
            Application.router.navigateTo(
              context,
              "/detail?title=${FluroConvertUtils.fluroCnParamsEncode('最受欢迎')}",
              transition: TransitionType.native,
              // transitionDuration: const Duration(milliseconds: 300),
            );
          },
        ),
        SizedBox(
          height: 32.0,
        ),
        Observer(
          builder: (_) => popularBookData == null
              ? Text("正在获取数据")
              : Container(
                  height: 140.0,
                  child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: popularBookData
                          .map((CommonData data) => Container(
                              margin: EdgeInsets.only(right: 16.0),
                              child: CommonBookCard(
                                title: data.title,
                                bookImage: data.bookImage,
                                description:data.description.trimLeft(),
                              )))
                          .toList()),
                ),
        ),
      ],
    );
  }
}
