import 'package:flutter/material.dart';
import 'package:flutter_book/widgets/Detail/DetailContent.dart';
import 'package:flutter_book/helpers/constants.dart';
import 'package:flutter_book/widgets/common/MyHeader.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';

class Detail extends StatefulWidget {
  final String title;
  final String type;
  Detail({@required this.title, this.type}) : assert(title != null);
  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  EasyRefreshController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = EasyRefreshController();
    print(widget.type);
    switch (widget.type) {
      case 'recommend':
        print("获取推荐数据");
        break;
      case 'popularBooks':
        print("获取最受欢迎数据");
        break;
      case 'hotProduct':
        print("获取热门推荐数据");
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: Constants.pageMargin),
        child: EasyRefresh(
          enableControlFinishRefresh: false,
          enableControlFinishLoad: false,
          header: MyHeader(
              refreshedText: "更新成功",
              refreshFailedText: "刷新失败，请稍后重试",
              refreshReadyText: "松手刷新",
              refreshingText: "正在更新内容",
              refreshText: "下拉刷新",
              textColor: Color(AppColors.fontColorGray),
              showInfo: false),
          child: ListView(
            children: [DetailContent()],
          ),
          onRefresh: () async {
            await Future.delayed(Duration(seconds: 2), () {
              // _controller.resetLoadState();
              _controller.finishRefresh(success: true);
            });
          },
          onLoad: () async {
            await Future.delayed(Duration(seconds: 2), () {
              // _controller.resetLoadState();
              print("object");
              _controller.finishLoad(noMore: true);
            });
          },
        ),
      ),
    );
  }
}
