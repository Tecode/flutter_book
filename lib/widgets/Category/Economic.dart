import 'package:flutter/material.dart';
import 'package:flutter_book/widgets/common/CommonTitle.dart';
import 'package:flutter_book/widgets/common/BookCard.dart';
import 'package:flutter_book/helpers/constants.dart';

class Economic extends StatefulWidget {
  @override
  _EconomicState createState() => _EconomicState();
}

class _EconomicState extends State<Economic>
    with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  // 切换tab的时候保持原来的状态，不销毁组件
  @override
  bool get wantKeepAlive => true;
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(
            top: 32.0,
            left: Constants.pageMargin,
            right: Constants.pageMargin,
            bottom: 60.0),
        child: Column(
          children: <Widget>[
            CommonTitle(title: '最新热门书籍'),
            SizedBox(
              height: 32.0,
              width: double.infinity,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(3, (int index) {
                  return BookCard(
                    title: '爱的博弈',
                    width: 100.0,
                    height: 148.0,
                    titleMaxLines: 1,
                    author: '约翰•戈特曼；娜恩•西尔弗',
                    gap: 10.0,
                    imageUrl:
                        'https://cdn.pixabay.com/photo/2018/05/11/08/11/pet-3389729_960_720.jpg',
                  );
                })),
            SizedBox(
              height: 32.0,
              width: double.infinity,
            ),
            CommonTitle(title: '热门书籍'),
            SizedBox(
              height: 32.0,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(3, (int index) {
                  return BookCard(
                    title: 'ElfinFox / 79 张照片',
                    width: 100.0,
                    height: 148.0,
                    titleMaxLines: 1,
                    author: '约翰•戈特曼；娜恩•西尔弗',
                    gap: 10.0,
                    imageUrl:
                        'https://cdn.pixabay.com/photo/2016/11/29/04/23/camera-1867296_960_720.jpg',
                  );
                })),
            CommonTitle(title: '热门书籍'),
            SizedBox(
              height: 32.0,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(3, (int index) {
                  return BookCard(
                    title: 'Buecherwurm_65 / 58 张照片',
                    width: 100.0,
                    height: 148.0,
                    titleMaxLines: 1,
                    author: '约翰•戈特曼；娜恩•西尔弗',
                    gap: 10.0,
                    imageUrl:
                        'https://cdn.pixabay.com/photo/2016/11/21/22/39/meerkat-1847835_960_720.jpg',
                  );
                })),
          ],
        ),
      ),
    );
  }
}
