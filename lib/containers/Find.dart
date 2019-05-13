import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_book/widgets/Find/BookCover.dart';
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
    print(findStore.tile);
    return Observer(builder: (_) => findStore.tile ? Text("4") : Text("5"));
  }
}
