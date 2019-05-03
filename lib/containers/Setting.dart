import 'package:flutter/material.dart';
import 'package:flutter_book/helpers/constants.dart';

class Setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('设置'),
      ),
      body: Text(
        'Setting',
        style: TextStyle(color: Color(AppColors.fontColor)),
      ),
    );
  }
}
