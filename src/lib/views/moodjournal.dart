import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:nuance/models/moodentry.dart';
import 'package:nuance/models/moodhistory.dart';

class MoodJournal extends StatefulWidget {
  @override
  _MoodJournalState createState() => _MoodJournalState();
}

class _MoodJournalState extends State<MoodJournal> {
  MoodHistory history = MoodHistory();
  String _text = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: history.entries.length,
              itemBuilder: (context, index) {
                var entry = history.entries[index];
                var activities = List<Text>();
                for (var activity in entry.activities) {
                  activities.add(Text(activity));
                }
                return Card(
                    color: Colors.purple[200],
                    child: ListTile(
                        title: Text(entry.mood),
                        subtitle: Column(children: activities)));
              }),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 32.0, bottom: 32.0),
          child: RaisedButton(
            onPressed: () {
              newEntry(context);
            },
            child: Text("newEntry"),
          ),
        )
      ],
    );
  }

  newEntry(context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(AppLocalizations.of(context).feeling),
            content: TextField(
                decoration: InputDecoration(
                  labelText: AppLocalizations.of(context).feeling_desc,
                ),
                onChanged: (text) {
                  _text = text;
                }),
            actions: [
              FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Cancelar")),
              FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                    setState(() {
                      history.addEntry(MoodEntry(_text, List()));
                    });
                  },
                  child: Text("Confirmar"))
            ],
          );
        });
  }
}
