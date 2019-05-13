import 'package:flutter/material.dart';
import 'package:flutter_book/widgets/Find/BookTile.dart';
import 'package:flutter_book/stores/findStore.dart';

class Find extends StatefulWidget {
  @override
  _FindState createState() => _FindState();
}

class _FindState extends State<Find> {
  final findStore = FindStore();

  @override
  Widget build(BuildContext context) {
    return BookTile(findStore);
  }
}
