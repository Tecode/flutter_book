import 'package:flutter/material.dart';
import 'package:flutter_book/widgets/Setting/SettingContent.dart';

class Setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('设置'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SettingContent(),
    );
  }
}
