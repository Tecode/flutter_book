import 'package:mobx/mobx.dart';
import 'package:flutter_book/api/http.dart';
import 'package:dio/dio.dart';

// Include generated file
part 'registerStore.g.dart';

// This is the class used by rest of your codebase
class RegisterStore = _RegisterStore with _$RegisterStore;

// The store-class
abstract class _RegisterStore with Store {
  // 用户信息
  Map<String, String> reginterInfo = {
    'email': 'animg02',
    'name': 'Flutter02',
    'password': '0123',
    'phone': '0123'
  };

  // 注册新用户
  void handleRegister() async {
    print(reginterInfo);
    Response response =
        await HttpRequest().dio.post('/user/', data: reginterInfo);
    print(response);
  }

  @action
  void changeValue(String key, String value) {
    reginterInfo[key] = value;
  }
}

RegisterStore $store = RegisterStore();
