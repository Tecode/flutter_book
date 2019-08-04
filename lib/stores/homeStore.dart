import 'package:mobx/mobx.dart';
import 'package:flutter_book/api/http.dart';
import 'package:flutter_book/models/common.dart';
import 'package:dio/dio.dart';

// Include generated file
part 'homeStore.g.dart';

// This is the class used by rest of your codebase
class HomeStore = _HomeStore with _$HomeStore;

// The store-class
abstract class _HomeStore with Store {
  @observable
  bool tile = false;
  // 推荐列表
  @observable
  CommonDataList recommendData;
  // 热门图书
  @observable
  CommonDataList hotBooksData;
  // 最受欢迎
  @observable
  CommonDataList popularBookData;

  @action
  void setTile(String key, dynamic value) => tile = value;

  // @action
  // num counter() => this.count++;

  // 首页数据
  @action
  Future getData() async {
    List<Response> response = await Future.wait([
      // 获取推荐
      HttpRequest().dio.get('/api/book_info/recommend',
          queryParameters: {"index": 1, "size": 10}),
      // 最受欢迎
      HttpRequest().dio.get('/api/book_info/popular_book?',
          queryParameters: {"index": 1, "size": 10}),
      // 最受欢迎
      HttpRequest().dio.get('/api/book_info/hot_book',
          queryParameters: {"index": 1, "size": 10}),
    ]);
    recommendData = CommonDataList.fromJson(response[0].data['data']);
    popularBookData = CommonDataList.fromJson(response[1].data['data']);
    hotBooksData = CommonDataList.fromJson(response[2].data['data']);
  }
}

HomeStore $store = HomeStore();
