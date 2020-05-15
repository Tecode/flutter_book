import 'package:flutter/material.dart';
import 'package:flutter_book/widgets/common/CommonBookCard.dart';
import 'package:flutter_book/helpers/constants.dart';
import 'package:flutter_book/widgets/common/MyHeader.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_book/stores/detail.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_book/models/common.dart';

class Detail extends StatefulWidget {
  final String title;
  final String type;

  Detail({@required this.title, this.type}) : assert(title != null);

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  DetailStore _store;
  EasyRefreshController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = EasyRefreshController();
    // store没有定义为全局的store
    _store = DetailStore();
    // 获取列表数据
    _store.listDetailApi(widget.type);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
    print("销毁");
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
        child: Observer(
          builder: (_) {
            List<CommonData> _listData = _store.listData?.data;
            return EasyRefresh(
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
              child: _store.loading
                  ? Align(
                      child: Text("正在获取数据"),
                    )
                  : ListView(
                      children: _listData
                          .map((CommonData _item) => CommonBookCard(
                                title: _item.title,
                                bookImage: _item.bookImage,
                                boxWidth: MediaQuery.of(context).size.width,
                                description: _item.description.trimLeft(),
                                author: _item.author,
                              ))
                          .toList(),
                    ),
              onRefresh: () async {
                _store.changePage(1);
                _store.listDetailApi(widget.type);
                if (!_store.loading) {
                  _controller.finishRefresh(success: true);
                }
              },
//              如果超过了总的条数就不要拉刷新了
              onLoad:
                  (_store.listData?.totalElements ?? 0 / _store.params['size'])
                              .ceil() >
                          _store.params['index']
                      ? () async {
                          _store.changePage(_store.params['index'] + 1);
                          _store.listDetailApi(widget.type);
                          if (!_store.loading) {
                            _controller.finishLoad(noMore: true);
                          }
                        }
                      : null,
            );
          },
        ),
      ),
    );
  }
}
