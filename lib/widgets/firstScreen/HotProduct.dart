import 'package:flutter/material.dart';
import 'package:flutter_book/widgets/common/CommonTitle.dart';
import 'package:flutter_book/model/HotBooksData.dart';
import 'package:flutter_book/helpers/constants.dart';

class HotProduct extends StatelessWidget {
  final List<HotBooksModel> hotBooksData = HotBooksData().hotBooksData;

  @override
  Widget build(BuildContext context) {
    final List<Widget> _children = hotBooksData.map((data) {
      return _HotProduct(
          title: data.title, imageUrl: data.imageUrl, author: data.author);
    }).toList();

    return Column(
      children: <Widget>[
        CommonTitle(
          title: '热门图书',
        ),
        SizedBox(
          height: 30.0,
        ),
        Wrap(
          // 计算间隙
          spacing: (MediaQuery.of(context).size.width - 96 * 3 - 24 * 2) / 2,
          runSpacing: 30.0,
          alignment: WrapAlignment.spaceBetween,
          children: _children,
        ),
      ],
    );
  }
}

class _HotProduct extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String author;

  _HotProduct(
      {@required this.title, @required this.imageUrl, @required this.author})
      : assert(title != null),
        assert(imageUrl != null),
        assert(author != null);

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
                borderRadius: BorderRadius.all(Radius.circular(4.0)),
                color: Color(AppColors.themeColorGray),
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(this.imageUrl))),
          ),
          SizedBox(
            height: 16.0,
          ),
          Text(
            this.title,
            maxLines: 2,
            textAlign: TextAlign.left,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: Color(AppColors.fontColor), fontSize: 14.0),
          ),
          Text(
            this.author,
            maxLines: 1,
            textAlign: TextAlign.left,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                color: Color(AppColors.fontColorGray), fontSize: 12.0),
          ),
        ],
      ),
    );
  }
}
