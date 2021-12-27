// @dart=2.9
// import 'dart:convert';
import 'package:mobx/mobx.dart';
import 'package:flutter_book/api/http.dart';
import 'package:dio/dio.dart';

// Include generated file
part 'mine.g.dart';

// This is the class used by rest of your codebase
class MineStore = _MineStore with _$MineStore;

// The store-class
abstract class _MineStore with Store {
  @observable
  bool tile = false;

  @observable
  num count = 10;

  @action
  void setTile(String key, dynamic value) => tile = value;

  @action
  num counter() => this.count++;

  // api接口异步请求
  void getInfo() async {
    Response response =
        await HttpRequest().dio.get('http://api.soscoon.com/playlist/hot');
    print(response);
  }
}

MineStore $store = MineStore();
