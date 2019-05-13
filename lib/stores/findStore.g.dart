// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'findStore.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars

mixin _$FindStore on _FindStore, Store {
  final _$tileAtom = Atom(name: '_FindStore.tile');

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

  final _$_FindStoreActionController = ActionController(name: '_FindStore');

  @override
  void setTile(String key, dynamic value) {
    final _$actionInfo = _$_FindStoreActionController.startAction();
    try {
      return super.setTile(key, value);
    } finally {
      _$_FindStoreActionController.endAction(_$actionInfo);
    }
  }
}
