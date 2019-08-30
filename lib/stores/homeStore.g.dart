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

  final _$hotBooksDataAtom = Atom(name: '_HomeStore.hotBooksData');

  @override
  CommonDataList get hotBooksData {
    _$hotBooksDataAtom.context.enforceReadPolicy(_$hotBooksDataAtom);
    _$hotBooksDataAtom.reportObserved();
    return super.hotBooksData;
  }

  @override
  set hotBooksData(CommonDataList value) {
    _$hotBooksDataAtom.context.conditionallyRunInAction(() {
      super.hotBooksData = value;
      _$hotBooksDataAtom.reportChanged();
    }, _$hotBooksDataAtom, name: '${_$hotBooksDataAtom.name}_set');
  }

  final _$popularBookDataAtom = Atom(name: '_HomeStore.popularBookData');

  @override
  CommonDataList get popularBookData {
    _$popularBookDataAtom.context.enforceReadPolicy(_$popularBookDataAtom);
    _$popularBookDataAtom.reportObserved();
    return super.popularBookData;
  }

  @override
  set popularBookData(CommonDataList value) {
    _$popularBookDataAtom.context.conditionallyRunInAction(() {
      super.popularBookData = value;
      _$popularBookDataAtom.reportChanged();
    }, _$popularBookDataAtom, name: '${_$popularBookDataAtom.name}_set');
  }

  final _$versionDataAtom = Atom(name: '_HomeStore.versionData');

  @override
  VersionData get versionData {
    _$versionDataAtom.context.enforceReadPolicy(_$versionDataAtom);
    _$versionDataAtom.reportObserved();
    return super.versionData;
  }

  @override
  set versionData(VersionData value) {
    _$versionDataAtom.context.conditionallyRunInAction(() {
      super.versionData = value;
      _$versionDataAtom.reportChanged();
    }, _$versionDataAtom, name: '${_$versionDataAtom.name}_set');
  }

  final _$getDataAsyncAction = AsyncAction('getData');

  @override
  Future<dynamic> getData() {
    return _$getDataAsyncAction.run(() => super.getData());
  }

  final _$getVersionAsyncAction = AsyncAction('getVersion');

  @override
  Future<dynamic> getVersion() {
    return _$getVersionAsyncAction.run(() => super.getVersion());
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
