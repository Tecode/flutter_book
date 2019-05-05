import 'package:flutter/material.dart';
import 'package:flutter_book/widgets/Detail/DetailContent.dart';

class Detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('详情'),
        centerTitle: true,
        elevation: 0,
      ),
      body: DetailContent(),
    );
  }
}
