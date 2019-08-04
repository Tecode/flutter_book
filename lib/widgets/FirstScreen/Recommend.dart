import 'package:flutter/material.dart';
import 'package:flutter_book/widgets/common/CommonTitle.dart';
import 'package:flutter_book/helpers/constants.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter_book/routers/application.dart';
import 'package:flutter_book/helpers/fluro_convert_util.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_book/models/common.dart';
import 'package:provider/provider.dart';
import 'package:flutter_book/stores/homeStore.dart';

class Recommend extends StatelessWidget {
  List<Widget> cardList(List<CommonData> recommendData) {
    List<Widget> newArr = [];
    recommendData.forEach((CommonData data) {
      newArr.add(_CardItem(
        imageUrl: data.bookImage,
        title: data.title,
      ));
    });
    return newArr;
  }

  @override
  Widget build(BuildContext context) {
    final homeStore = Provider.of<HomeStore>(context);
    return Observer(builder: (_) {
      List<CommonData> recommendData = homeStore.recommendData?.data;
      return recommendData == null
            ? Text("正在获取数据")
            : Column(
                children: <Widget>[
                  CommonTitle(
                    title: "推荐",
                    onTap: () {
                      Application.router.navigateTo(
                        context,
                        "/detail?title=${FluroConvertUtils.fluroCnParamsEncode('最受欢迎')}",
                        transition: TransitionType.native,
                        // transitionDuration: const Duration(milliseconds: 300),
                      );
                    },
                  ),
                  Container(
                    height: 140.0,
                    margin: EdgeInsets.only(top: 40.0, bottom: 18.0),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: cardList(homeStore.recommendData?.data),
                    ),
                  )
                ],
              );
    });
  }
}

class _CardItem extends StatelessWidget {
  final String imageUrl;
  final String title;

// 构造方法
  _CardItem({@required this.title, @required this.imageUrl})
      : assert(title != null),
        assert(imageUrl != null);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.0,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(4.0))),
      margin: EdgeInsets.only(right: 18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 80.0,
            height: 80.0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4.0),
              child: FadeInImage.assetNetwork(
                placeholder: 'assets/images/image_none.gif',
                image: this.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Text(this.title,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style:
                  TextStyle(fontSize: 14.0, color: Color(AppColors.fontColor)))
        ],
      ),
    );
  }
}
