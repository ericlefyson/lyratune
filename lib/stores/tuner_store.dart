import 'package:lyratune/constants.dart';
import 'package:mobx/mobx.dart';

part 'tuner_store.g.dart';

enum TunerStatus { wayTooLow, tooLow, tuned, tooHigh, wayTooHigh }

class TunerStore = _TunerStore with _$TunerStore;

abstract class _TunerStore with Store {
  @observable
  int bottomNavigatorCurrentPage = BottomNavigatorPage.home;

  @action
  void setBottomNavigatorCurrentPage(int newPage) {
    bottomNavigatorCurrentPage = newPage;
  }

  @observable
  TunerStatus status = TunerStatus.tuned;

  @action
  void setStatus(TunerStatus newStatus) {
    status = newStatus;
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
      case TunerStatus.wayTooLow:
        return 20;
      case TunerStatus.tooLow:
        return 40;
      case TunerStatus.tuned:
        return 50;
      case TunerStatus.tooHigh:
        return 60;
      case TunerStatus.wayTooHigh:
        return 80;
      default:
        return 0;
    }
  }
  // Add your observables, actions, and computed properties here
}
