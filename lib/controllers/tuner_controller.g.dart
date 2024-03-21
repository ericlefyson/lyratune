// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tuner_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TunerController on _TunerControllerBase, Store {
  Computed<double>? _$tunerDisplayValueComputed;

  @override
  double get tunerDisplayValue => (_$tunerDisplayValueComputed ??=
          Computed<double>(() => super.tunerDisplayValue,
              name: '_TunerControllerBase.tunerDisplayValue'))
      .value;

  late final _$statusAtom =
      Atom(name: '_TunerControllerBase.status', context: context);

  @override
  TuningStatus get status {
    _$statusAtom.reportRead();
    return super.status;
  }

  @override
  set status(TuningStatus value) {
    _$statusAtom.reportWrite(value, super.status, () {
      super.status = value;
    });
  }

  late final _$isRecordingAtom =
      Atom(name: '_TunerControllerBase.isRecording', context: context);

  @override
  bool get isRecording {
    _$isRecordingAtom.reportRead();
    return super.isRecording;
  }

  @override
  set isRecording(bool value) {
    _$isRecordingAtom.reportWrite(value, super.isRecording, () {
      super.isRecording = value;
    });
  }

  late final _$noteAtom =
      Atom(name: '_TunerControllerBase.note', context: context);

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

  late final _$_TunerControllerBaseActionController =
      ActionController(name: '_TunerControllerBase', context: context);

  @override
  void setStatus(TuningStatus newStatus) {
    final _$actionInfo = _$_TunerControllerBaseActionController.startAction(
        name: '_TunerControllerBase.setStatus');
    try {
      return super.setStatus(newStatus);
    } finally {
      _$_TunerControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsRecording(bool newIsRecording) {
    final _$actionInfo = _$_TunerControllerBaseActionController.startAction(
        name: '_TunerControllerBase.setIsRecording');
    try {
      return super.setIsRecording(newIsRecording);
    } finally {
      _$_TunerControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setNote(String newNote) {
    final _$actionInfo = _$_TunerControllerBaseActionController.startAction(
        name: '_TunerControllerBase.setNote');
    try {
      return super.setNote(newNote);
    } finally {
      _$_TunerControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
status: ${status},
isRecording: ${isRecording},
note: ${note},
tunerDisplayValue: ${tunerDisplayValue}
    ''';
  }
}
