// import 'dart:convert';
import 'package:mobx/mobx.dart';
import 'package:flutter_book/api/http.dart';
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
  num count = 10;

  @action
  void setTile(String key, dynamic value) => tile = value;

  @action
  num counter() => this.count++;

  // 首页数据
  void getData() async {
    List<Response> response = await Future.wait([
      // 获取推荐
      HttpRequest().dio.get('/api/book_info/recommend?index=1&size=10'),
      // 最受欢迎
      HttpRequest().dio.get('/api/book_info/popular_book?index=1&size=10'),
    ]);
    print(response[0]);
  }
}

HomeStore $store = HomeStore();
