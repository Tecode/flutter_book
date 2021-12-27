// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter_book/widgets/Category/CategoryContent.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("书籍类别"),
        centerTitle: true,
        elevation: 0,
      ),
      body: CategoryContent(),
    );
  }
}
