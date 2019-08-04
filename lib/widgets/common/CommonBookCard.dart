import 'package:flutter/material.dart';
import 'package:flutter_book/routers/application.dart';
import 'package:fluro/fluro.dart';

// import 'package:flutter_svg/svg.dart';
import 'package:flutter_book/helpers/constants.dart';

class CommonBookCard extends StatefulWidget {
  final double boxWidth;
  final String title;
  final String bookImage;
  final String description;

  CommonBookCard(
      {this.boxWidth,
      this.title = "标题",
      this.bookImage = "",
      this.description = "简介"});

  @override
  _CommonBookCardState createState() => _CommonBookCardState();
}

class _CommonBookCardState extends State<CommonBookCard> {
  double boxWidth;
  @override
  Widget build(BuildContext context) {
    if (widget.boxWidth == null) {
      boxWidth = MediaQuery.of(context).size.width -
          Constants.pageMargin * 2 -
          52.0 -
          114.0;
    } else {
      boxWidth = widget.boxWidth;
    }
    return GestureDetector(
      onTap: () {
        Application.router.navigateTo(
          context,
          "/bookDetail",
          transition: TransitionType.native,
          // transitionDuration: const Duration(milliseconds: 300),
        );
      },
      child: Stack(
        overflow: Overflow.visible,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: Color(AppColors.themeColorGray),
                borderRadius: BorderRadius.all(Radius.circular(4.0))),
            margin: EdgeInsets.only(top: 16.0),
            padding: EdgeInsets.only(left: 114.0, right: 6.0),
            height: 125.0,
            child: Container(
              padding: EdgeInsets.all(10.0),
              width: boxWidth,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            widget.title,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(
                                color: Color(AppColors.fontColor),
                                fontSize: 18.0),
                          ),
                          Text(widget.description,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: TextStyle(
                                  color: Color(AppColors.fontColor),
                                  fontSize: 14.0))
                        ],
                      )),
                    ],
                  ),
                  SizedBox(height: 14.0),
                  Text('After Thomas,Kruger',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Color(AppColors.fontColorGray),
                          fontSize: 12.0))
                ],
              ),
            ),
          ),
          Positioned(
              left: 16.0,
              child: Container(
                width: 86.0,
                height: 126.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(4.0),
                  child: FadeInImage.assetNetwork(
                      image: widget.bookImage,
                      placeholder: 'assets/images/image_none.gif',
                      fit: BoxFit.cover),
                ),
              )),
        ],
      ),
    );
  }
}
