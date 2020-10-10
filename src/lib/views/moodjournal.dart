import 'package:flutter/material.dart';

class MoodJournal extends StatefulWidget {
  @override
  _MoodJournalState createState() => _MoodJournalState();
}

class _MoodJournalState extends State<MoodJournal> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      child: Text("HOW ARE YOU FEELING TODAY"),
    ));
  }
}
