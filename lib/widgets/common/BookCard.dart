// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter_book/helpers/constants.dart';
import 'package:flutter_book/helpers/Adapt.dart';

class BookCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String author;
  final double width;
  final double height;
  final double gap;
  final int titleMaxLines;

  BookCard(
      {@required this.title,
      @required this.imageUrl,
      @required this.author,
      this.gap = 16.0,
      this.width = 96.0,
      this.titleMaxLines = 2,
      this.height = 148.0})
      : assert(title != null),
        assert(imageUrl != null),
        assert(author != null);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: Adapt.width(width),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: Adapt.width(width),
            height: Adapt.height(height),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(4.0)),
              child: FadeInImage(
                image: NetworkImage(this.imageUrl),
                placeholder: AssetImage('assets/images/image_none.gif'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: Adapt.height(gap),
          ),
          Text(
            this.title,
            maxLines: titleMaxLines,
            textAlign: TextAlign.left,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                color: Color(AppColors.fontColor), fontSize: Adapt.px(14.0)),
          ),
          Text(
            this.author,
            maxLines: 1,
            textAlign: TextAlign.left,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                color: Color(AppColors.fontColorGray),
                fontSize: Adapt.px(12.0)),
          ),
        ],
      ),
    );
  }
}
