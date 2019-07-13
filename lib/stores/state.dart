// import 'package:localstorage/localstorage.dart';
import 'package:mobx/mobx.dart';
// import 'package:quich/services/api_service.dart';

part 'state.g.dart';

abstract class AppStoreBase implements Store {
  // LocalStorage storage = LocalStorage('quich');
  // final ApiService apiService = ApiService();
  /// MANY CODE HERE
}

/* App store singletone */
class AppStore extends AppStoreBase with _$AppStore {
  factory AppStore() {
    return _singleton;
  }

  AppStore._internal();

  AppStore reset() {
    return AppStore._internal();
  }

  static final AppStore _singleton = AppStore._internal();
  @override
  void dispose() {
    print('DISPOSE STORE');
  }
}

// AppStore $store = AppStore();