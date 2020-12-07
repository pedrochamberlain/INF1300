class MoodEntry {
  String mood;
  List<String> activities;
  String note;

  MoodEntry(String mood, Iterable<String> activities, {String note = ""}) {
    this.mood = mood;
    this.activities = new List();
    for (var activity in activities) {
      this.activities.add(activity);
    }
    this.note = note;
  }
}
