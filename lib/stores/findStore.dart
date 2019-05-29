import 'package:mobx/mobx.dart';
import 'package:flutter_book/api/http.dart';
import 'package:dio/dio.dart';

// Include generated file
part 'findStore.g.dart';

// This is the class used by rest of your codebase
class FindStore = _FindStore with _$FindStore;

// The store-class
abstract class _FindStore implements Store {
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
    Response response = await HttpRequest().dio.get('http://api.soscoon.com/playlist/hot');
    print(response);
  }
}
