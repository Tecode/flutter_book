import 'package:flutter/material.dart';
import 'package:flutter_book/widgets/BookShelf/BookShelf.dart';

class Books extends StatefulWidget {
  @override
  _BooksState createState() => _BooksState();
}

class _BooksState extends State<Books> {
  @override
  Widget build(BuildContext context) {
    return BookShelf();
  }
}
