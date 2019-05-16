import 'package:flutter/material.dart';
import 'package:flutter_book/widgets/Find/BookTile.dart';
import 'package:flutter_book/widgets/Find/BookCover.dart';

import 'package:flutter_book/stores/findStore.dart';
import 'package:provider/provider.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class Find extends StatefulWidget {
  @override
  _FindState createState() => _FindState();
}

class _FindState extends State<Find> {

  @override
  Widget build(BuildContext context) {
    final findStore = Provider.of<FindStore>(context);
    // 发送请求获取数据
    findStore.getInfo();
    return Observer(builder: (_) => findStore.tile ? BookTile() : BookCover());
  }
}
