import 'package:mobx/mobx.dart';
import 'package:nuance/models/moodentry.dart';

part 'moodhistory.g.dart';

class MoodHistory = _MoodHistory with _$MoodHistory;

abstract class _MoodHistory with Store {
  @observable
  List<MoodEntry> entries = new List<MoodEntry>();

  @action
  void addEntry(MoodEntry entry) {
    entries.add(entry);
  }
}
