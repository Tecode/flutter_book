import 'dart:convert';
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

  @observable
  CommonDataList recommendData;

  @action
  void setTile(String key, dynamic value) => tile = value;

  // @action
  // num counter() => this.count++;

  // 首页数据
  void getData() async {
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
    this.recommendData = CommonDataList.fromJson(response[0].data['data']);
  }
}

HomeStore $store = HomeStore();
