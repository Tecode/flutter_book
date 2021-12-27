// @dart=2.9
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselMap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
        itemCount: 5,
        options: CarouselOptions(
          autoPlay: true,
          aspectRatio: 2.0,
          enlargeCenterPage: true,
        ),
        itemBuilder: (BuildContext context, int index) => Container(
              margin: EdgeInsets.all(5.0),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Image.network(
                  'http://admin.soscoon.com/uploadImages/763229ced887b7e1e61a20aa1b14b42425c01e01.png',
                  fit: BoxFit.cover,
                  width: 600.0,
                ),
              ),
            ));
  }
}
