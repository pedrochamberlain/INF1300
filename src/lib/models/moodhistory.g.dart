// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moodhistory.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MoodHistory on _MoodHistory, Store {
  final _$entriesAtom = Atom(name: '_MoodHistory.entries');

  @override
  List<MoodEntry> get entries {
    _$entriesAtom.reportRead();
    return super.entries;
  }

  @override
  set entries(List<MoodEntry> value) {
    _$entriesAtom.reportWrite(value, super.entries, () {
      super.entries = value;
    });
  }

  final _$_MoodHistoryActionController = ActionController(name: '_MoodHistory');

  @override
  void addEntry(MoodEntry entry) {
    final _$actionInfo = _$_MoodHistoryActionController.startAction(
        name: '_MoodHistory.addEntry');
    try {
      return super.addEntry(entry);
    } finally {
      _$_MoodHistoryActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
entries: ${entries}
    ''';
  }
}
