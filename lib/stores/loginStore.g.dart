// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loginStore.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars

mixin _$LoginStore on _LoginStore, Store {
  final _$tileAtom = Atom(name: '_LoginStore.tile');

  @override
  bool get tile {
    _$tileAtom.reportObserved();
    return super.tile;
  }

  @override
  set tile(bool value) {
    _$tileAtom.context.checkIfStateModificationsAreAllowed(_$tileAtom);
    super.tile = value;
    _$tileAtom.reportChanged();
  }

  final _$countAtom = Atom(name: '_LoginStore.count');

  @override
  num get count {
    _$countAtom.reportObserved();
    return super.count;
  }

  @override
  set count(num value) {
    _$countAtom.context.checkIfStateModificationsAreAllowed(_$countAtom);
    super.count = value;
    _$countAtom.reportChanged();
  }

  final _$_LoginStoreActionController = ActionController(name: '_LoginStore');

  @override
  void setTile(String key, dynamic value) {
    final _$actionInfo = _$_LoginStoreActionController.startAction();
    try {
      return super.setTile(key, value);
    } finally {
      _$_LoginStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  num counter() {
    final _$actionInfo = _$_LoginStoreActionController.startAction();
    try {
      return super.counter();
    } finally {
      _$_LoginStoreActionController.endAction(_$actionInfo);
    }
  }
}
