import 'package:flutter/material.dart';
import 'package:flutter_book/widgets/Detail/DetailContent.dart';

class Detail extends StatelessWidget {
  final String title;
  Detail({@required this.title}) : assert(title != null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        elevation: 0,
      ),
      body: DetailContent(),
    );
  }
}
