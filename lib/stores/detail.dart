// @dart=2.9
// import 'dart:convert';
import 'package:mobx/mobx.dart';
import 'package:flutter_book/api/http.dart';
import 'package:flutter_book/models/common.dart';
import 'package:dio/dio.dart';

// Include generated file
part 'detail.g.dart';

// This is the class used by rest of your codebase
class DetailStore = _DetailStore with _$DetailStore;

// The store-class
abstract class _DetailStore with Store {
  @observable
  CommonDataList listData;

  @observable
  bool loading = true;

  @observable
  Map<String, int> params = {'index': 1, 'size': 10};

  // 修改页面参数
  @action
  void changePage(int index) {
    params['index'] = index;
  }

  // api接口异步请求
  void listDetailApi(String type) async {
    Response response;
    switch (type) {
      // 推荐
      case 'recommend':
        response = await HttpRequest().dio.get('/api/book_info/recommend',
            queryParameters: {
              "index": params['index'],
              "size": params['size']
            });
        break;
      // 最受欢迎
      case 'popularBooks':
        response = await HttpRequest().dio.get('/api/book_info/popular_book?',
            queryParameters: {
              "index": params['index'],
              "size": params['size']
            });
        break;
      // 热门
      case 'hotProduct':
        response = await HttpRequest().dio.get('/api/book_info/hot_book',
            queryParameters: {
              "index": params['index'],
              "size": params['size']
            });
        break;
      default:
    }
    if (listData == null || params['index'] == 1) {
      listData = CommonDataList.fromJson(response.data['data']);
    } else {
      listData.data.addAll(CommonDataList.fromJson(response.data['data']).data);
    }
    print(listData);
    loading = false;
  }
}

DetailStore $store = DetailStore();
