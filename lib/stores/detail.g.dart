// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars

mixin _$DetailStore on _DetailStore, Store {
  final _$listDataAtom = Atom(name: '_DetailStore.listData');

  @override
  CommonDataList get listData {
    _$listDataAtom.context.enforceReadPolicy(_$listDataAtom);
    _$listDataAtom.reportObserved();
    return super.listData;
  }

  @override
  set listData(CommonDataList value) {
    _$listDataAtom.context.conditionallyRunInAction(() {
      super.listData = value;
      _$listDataAtom.reportChanged();
    }, _$listDataAtom, name: '${_$listDataAtom.name}_set');
  }

  final _$loadingAtom = Atom(name: '_DetailStore.loading');

  @override
  bool get loading {
    _$loadingAtom.context.enforceReadPolicy(_$loadingAtom);
    _$loadingAtom.reportObserved();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.context.conditionallyRunInAction(() {
      super.loading = value;
      _$loadingAtom.reportChanged();
    }, _$loadingAtom, name: '${_$loadingAtom.name}_set');
  }

  final _$paramsAtom = Atom(name: '_DetailStore.params');

  @override
  Map<String, int> get params {
    _$paramsAtom.context.enforceReadPolicy(_$paramsAtom);
    _$paramsAtom.reportObserved();
    return super.params;
  }

  @override
  set params(Map<String, int> value) {
    _$paramsAtom.context.conditionallyRunInAction(() {
      super.params = value;
      _$paramsAtom.reportChanged();
    }, _$paramsAtom, name: '${_$paramsAtom.name}_set');
  }

  final _$_DetailStoreActionController = ActionController(name: '_DetailStore');

  @override
  void changePage(int index) {
    final _$actionInfo = _$_DetailStoreActionController.startAction();
    try {
      return super.changePage(index);
    } finally {
      _$_DetailStoreActionController.endAction(_$actionInfo);
    }
  }
}
