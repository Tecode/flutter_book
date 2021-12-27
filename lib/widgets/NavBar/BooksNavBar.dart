// @dart=2.9
import 'package:flutter/material.dart';

class BooksNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("书架"),
      centerTitle: true,
      elevation: 0,
    );
  }
}
