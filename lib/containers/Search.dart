import 'package:flutter/material.dart';
import 'package:flutter_book/widgets/Search/SearchBox.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 37.0),
        child: Column(
          children: <Widget>[SearchBox()],
        ),
      ),
    );
  }
}
