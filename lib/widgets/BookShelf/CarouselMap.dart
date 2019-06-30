import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_book/helpers/constants.dart';

class CarouselMap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      height: 200.0,
      autoPlay: true,
      enlargeCenterPage: true,
      aspectRatio: 2.0,
      onPageChanged: (int index) {
        print(index);
      },
      viewportFraction: 0.36,
      items: [1, 2, 3, 4, 5].map((i) {
        return Container(
          margin: EdgeInsets.all(5.0),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            child: Image.network(
              'http://admin.soscoon.com/uploadImages/763229ced887b7e1e61a20aa1b14b42425c01e01.png',
              fit: BoxFit.cover,
              width: 600.0,
            ),
          ),
        );
      }).toList(),
    );
  }
}
