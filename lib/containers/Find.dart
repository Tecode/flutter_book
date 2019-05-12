import 'package:flutter/material.dart';
import 'package:flutter_book/widgets/Find/BookCover.dart';
import 'package:flutter_book/widgets/Find/BookTile.dart';

class Find extends StatefulWidget {
  @override
  _FindState createState() => _FindState();
}

class _FindState extends State<Find> {
  bool _tile = true;

  @override
  Widget build(BuildContext context) {
    return BookTile();
  }
}
