import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_book/helpers/constants.dart';

class CommonBookCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              width: 86.0,
              height: 126.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(4.0)),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'http://admin.soscoon.com/uploadImages/95b0838eb05d6f8f91ad924dd7e6e5ea672ef183.png'))),
            )
          ],
        ),
        Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      'Sortir a Cannes',
                      style: TextStyle(
                          color: Color(AppColors.fontColor), fontSize: 18.0),
                    ),
                    Text('Author：Michael, Jost',
                        style: TextStyle(
                            color: Color(AppColors.fontColor), fontSize: 12.0))
                  ],
                ),
                SvgPicture.asset(
                  'assets/icon/icon_view_more.svg',
                  width: 16.0,
                  height: 3.0,
                )
              ],
            ),
            Text('After Thomas, Kruger and Bellucci…',
                style: TextStyle(
                    color: Color(AppColors.fontColorGray), fontSize: 12.0))
          ],
        )
      ],
    );
  }
}
