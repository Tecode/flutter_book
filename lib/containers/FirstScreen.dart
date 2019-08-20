import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_book/widgets/FirstScreen/FirstScreenContent.dart';
import 'package:provider/provider.dart';
import 'package:flutter_book/stores/homeStore.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_book/helpers/constants.dart';
import 'package:flutter_book/widgets/common/Hearder.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen>
    with AutomaticKeepAliveClientMixin {
  HomeStore homeStore;
  EasyRefreshController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // 下拉刷新
    _controller = EasyRefreshController();
    // 发送请求
    Future.delayed(Duration.zero, () {
      homeStore = Provider.of<HomeStore>(this.context);
      homeStore.getData();
    });
  }

  @override
  Widget build(BuildContext context) {
    return EasyRefresh(
      enableControlFinishRefresh: false,
      // header: MaterialHeader(),
      child: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
                left: Constants.pageMargin,
                right: Constants.pageMargin,
                top: 20.0,
                bottom: 40),
            child: FirstScreenContent(),
          ),
        ],
      ),
      onRefresh: () async {
        await Future.delayed(Duration(seconds: 2), () {
          // _controller.resetLoadState();
          _controller.finishRefresh(success: true);
        });
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}
