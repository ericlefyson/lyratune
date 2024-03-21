import 'package:flutter/foundation.dart';
import 'package:flutter_audio_capture/flutter_audio_capture.dart';
import 'package:mobx/mobx.dart';
import 'package:pitch_detector_dart/pitch_detector.dart';
import 'package:pitchupdart/instrument_type.dart';
import 'package:pitchupdart/pitch_handler.dart';
import 'package:pitchupdart/tuning_status.dart';
import 'package:permission_handler/permission_handler.dart';

part 'tuner_controller.g.dart';

class TunerController = _TunerControllerBase with _$TunerController;

abstract class _TunerControllerBase with Store {
  final _audioRecorder = FlutterAudioCapture();
  final pitchDetectorDart = PitchDetector(44100, 2000);
  final pitchupDart = PitchHandler(InstrumentType.guitar);
  @observable
  TuningStatus status = TuningStatus.tuned;

  @action
  void setStatus(TuningStatus newStatus) {
    status = newStatus;
  }

  @observable
  bool isRecording = false;

  @action
  void setIsRecording(bool newIsRecording) {
    isRecording = newIsRecording;
  }

  @observable
  String note = '';

  @action
  void setNote(String newNote) {
    note = newNote;
  }

  @computed
  double get tunerDisplayValue {
    switch (status) {
      case TuningStatus.waytoolow:
        return 20;
      case TuningStatus.toolow:
        return 40;
      case TuningStatus.tuned:
        return 50;
      case TuningStatus.toohigh:
        return 60;
      case TuningStatus.waytoohigh:
        return 80;
      default:
        return 0;
    }
  }

  void startListen() async {
    if (await Permission.microphone.request().isGranted) {
      setIsRecording(true);
      await _audioRecorder.start(listener, error,
          sampleRate: 44100, bufferSize: 3000);
    }
  }

  void listener(dynamic obj) {
    var buffer = Float64List.fromList(obj.cast<double>());
    final List<double> audioSample = buffer.toList();

    final result = pitchDetectorDart.getPitch(audioSample);

    if (result.pitched) {
      final handledPitchResult = pitchupDart.handlePitch(result.pitch);

      setNote(handledPitchResult.note);
      setStatus(handledPitchResult.tuningStatus);
    }
  }

  void stopListen() async {
    await _audioRecorder.stop();
    setIsRecording(false);
  }

  void error(dynamic obj) {
    print('Error: $obj');
  }
}
