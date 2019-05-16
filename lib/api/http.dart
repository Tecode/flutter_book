import 'package:dio/dio.dart';

class HttpRequest {
  final Dio dio = Dio();

  HttpRequest() {
    // 增加拦截器
    dio.interceptors
      ..add(InterceptorsWrapper(onRequest: (RequestOptions options) {
        // 请求加入token
        options.headers["csrfToken"] = 'csrfToken';
        return options;
      }, onResponse: (Response response) {
        // 在返回响应数据之前做一些预处理
        return response; 
      }, onError: (DioError e) {
        // 当请求失败时做一些预处理
        return e; //continue
      }))
      ..add(LogInterceptor());
    dio.options.receiveTimeout = 15000;
  }
}
