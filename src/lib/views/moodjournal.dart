import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MoodJournal extends StatefulWidget {
  @override
  _MoodJournalState createState() => _MoodJournalState();
}

class _MoodJournalState extends State<MoodJournal> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      child: Text(AppLocalizations.of(context).feeling),
    ));
  }
}
