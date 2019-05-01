import 'package:flutter/material.dart';
import 'package:flutter_book/widgets/BookShelf/CarouselMap.dart';
import 'package:flutter_book/widgets/BookShelf/Reading.dart';
import 'package:flutter_book/widgets/BookShelf/Finished.dart';

class BookShelf extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[CarouselMap(), Reading(), Finished()],
    );
  }
}
