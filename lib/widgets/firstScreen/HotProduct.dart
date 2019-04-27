import 'package:flutter/material.dart';
import 'package:flutter_book/widgets/common/CommonTitle.dart';

class HotProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CommonTitle(
          title: '热门图书',
        ),
        Wrap(
          // 计算间隙
          spacing: (MediaQuery.of(context).size.width - 96 * 3 - 24 * 2) / 2,
          runSpacing: 30.0,
          alignment: WrapAlignment.spaceBetween,
          children: List.generate(10, (int index) {
            return _HotProduct(
              title: '',
              imageUrl: '',
            );
          }),
        ),
      ],
    );
  }
}

class _HotProduct extends StatelessWidget {
  final String title;
  final String imageUrl;
  _HotProduct({@required this.title, @required this.imageUrl})
      : assert(title != null, imageUrl != null);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 96.0,
      child: Column(
        children: <Widget>[
          Container(
            width: 96.0,
            height: 148.0,
            decoration: BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'http://admin.soscoon.com/uploadImages/0ac2a3fa32719f01995a672c6c3e0885ff04ef60.png'))),
          ),
          Text(
            "GoLang高并发很多很多GitHub发行",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            "哔哩哔哩出品",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
