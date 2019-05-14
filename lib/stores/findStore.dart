import 'package:mobx/mobx.dart';

// Include generated file
part 'findStore.g.dart';

// This is the class used by rest of your codebase
class FindStore = _FindStore with _$FindStore;

// The store-class
abstract class _FindStore implements Store {
  @observable
  bool tile = false;

  @observable
  num count = 0;

  @action
  void setTile(String key, dynamic value) => tile = value;

  @action
  num counter() => this.count++;
}
