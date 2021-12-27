// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter_book/widgets/BookDetail/BookDetailContent.dart';

class BookDetail extends StatefulWidget {
  @override
  _BookDetailState createState() => _BookDetailState();
}

class _BookDetailState extends State<BookDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("活着"),
        centerTitle: true,
        elevation: 0,
      ),
      body: BookDetailContent(),
    );
  }
}
