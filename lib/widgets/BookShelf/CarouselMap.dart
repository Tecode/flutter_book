import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselMap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      height: 160.0,
      autoPlay: true,
      enlargeCenterPage: true,
      viewportFraction: 0.6,
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width - 60.0,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(color: Colors.amber),
                child: Text(
                  'text $i',
                  style: TextStyle(fontSize: 16.0),
                ));
          },
        );
      }).toList(),
    );
  }
}
