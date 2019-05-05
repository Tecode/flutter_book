import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_book/helpers/constants.dart';

class CarouselMap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      height: 210.0,
      autoPlay: true,
      // enlargeCenterPage: true,
      onPageChanged: (int index) {},
      viewportFraction: 0.36,
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width - 90.0,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                // decoration: BoxDecoration(color: Colors.amber),
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 116.0,
                      height: 170,
                      margin: EdgeInsets.only(bottom: 6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'http://admin.soscoon.com/uploadImages/763229ced887b7e1e61a20aa1b14b42425c01e01.png')),
                          color: Color(AppColors.themeColorGray)),
                    ),
                    Text(
                      'Sortir a Cannes',
                      style: TextStyle(
                          color: Color(AppColors.fontColor), fontSize: 13.0),
                    )
                  ],
                ));
          },
        );
      }).toList(),
    );
  }
}
