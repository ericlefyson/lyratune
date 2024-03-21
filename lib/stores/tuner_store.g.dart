// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tuner_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TunerStore on _TunerStore, Store {
  Computed<double>? _$tunerDisplayValueComputed;

  @override
  double get tunerDisplayValue => (_$tunerDisplayValueComputed ??=
          Computed<double>(() => super.tunerDisplayValue,
              name: '_TunerStore.tunerDisplayValue'))
      .value;

  late final _$bottomNavigatorCurrentPageAtom =
      Atom(name: '_TunerStore.bottomNavigatorCurrentPage', context: context);

  @override
  int get bottomNavigatorCurrentPage {
    _$bottomNavigatorCurrentPageAtom.reportRead();
    return super.bottomNavigatorCurrentPage;
  }

  @override
  set bottomNavigatorCurrentPage(int value) {
    _$bottomNavigatorCurrentPageAtom
        .reportWrite(value, super.bottomNavigatorCurrentPage, () {
      super.bottomNavigatorCurrentPage = value;
    });
  }

  late final _$statusAtom = Atom(name: '_TunerStore.status', context: context);

  @override
  TunerStatus get status {
    _$statusAtom.reportRead();
    return super.status;
  }

  @override
  set status(TunerStatus value) {
    _$statusAtom.reportWrite(value, super.status, () {
      super.status = value;
    });
  }

  late final _$noteAtom = Atom(name: '_TunerStore.note', context: context);

  @override
  String get note {
    _$noteAtom.reportRead();
    return super.note;
  }

  @override
  set note(String value) {
    _$noteAtom.reportWrite(value, super.note, () {
      super.note = value;
    });
  }

  late final _$_TunerStoreActionController =
      ActionController(name: '_TunerStore', context: context);

  @override
  void setBottomNavigatorCurrentPage(int newPage) {
    final _$actionInfo = _$_TunerStoreActionController.startAction(
        name: '_TunerStore.setBottomNavigatorCurrentPage');
    try {
      return super.setBottomNavigatorCurrentPage(newPage);
    } finally {
      _$_TunerStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setStatus(TunerStatus newStatus) {
    final _$actionInfo = _$_TunerStoreActionController.startAction(
        name: '_TunerStore.setStatus');
    try {
      return super.setStatus(newStatus);
    } finally {
      _$_TunerStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setNote(String newNote) {
    final _$actionInfo =
        _$_TunerStoreActionController.startAction(name: '_TunerStore.setNote');
    try {
      return super.setNote(newNote);
    } finally {
      _$_TunerStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
bottomNavigatorCurrentPage: ${bottomNavigatorCurrentPage},
status: ${status},
note: ${note},
tunerDisplayValue: ${tunerDisplayValue}
    ''';
  }
}
