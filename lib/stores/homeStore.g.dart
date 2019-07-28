// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'homeStore.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars

mixin _$HomeStore on _HomeStore, Store {
  final _$tileAtom = Atom(name: '_HomeStore.tile');

  @override
  bool get tile {
    _$tileAtom.context.enforceReadPolicy(_$tileAtom);
    _$tileAtom.reportObserved();
    return super.tile;
  }

  @override
  set tile(bool value) {
    _$tileAtom.context.conditionallyRunInAction(() {
      super.tile = value;
      _$tileAtom.reportChanged();
    }, _$tileAtom, name: '${_$tileAtom.name}_set');
  }

  final _$recommendDataAtom = Atom(name: '_HomeStore.recommendData');

  @override
  CommonDataList get recommendData {
    _$recommendDataAtom.context.enforceReadPolicy(_$recommendDataAtom);
    _$recommendDataAtom.reportObserved();
    return super.recommendData;
  }

  @override
  set recommendData(CommonDataList value) {
    _$recommendDataAtom.context.conditionallyRunInAction(() {
      super.recommendData = value;
      _$recommendDataAtom.reportChanged();
    }, _$recommendDataAtom, name: '${_$recommendDataAtom.name}_set');
  }

  final _$_HomeStoreActionController = ActionController(name: '_HomeStore');

  @override
  void setTile(String key, dynamic value) {
    final _$actionInfo = _$_HomeStoreActionController.startAction();
    try {
      return super.setTile(key, value);
    } finally {
      _$_HomeStoreActionController.endAction(_$actionInfo);
    }
  }
}
