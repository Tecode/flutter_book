import 'package:flutter/material.dart';
import 'package:flutter_book/widgets/FirstScreen/Recommend.dart';
import 'package:flutter_book/widgets/FirstScreen/HotProduct.dart';
import 'package:flutter_book/widgets/FirstScreen/SearchNouns.dart';
import 'package:flutter_book/widgets/FirstScreen/PopularBooks.dart';

class FirstScreenContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Recommend(),
        HotProduct(),
        SearchNouns(),
        PopularBooks()
      ],
    );
  }
}
