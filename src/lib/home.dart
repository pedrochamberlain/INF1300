import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:nuance/views/content.dart';
import 'package:nuance/views/moodjournal.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _bottomIndex = 0;
  List<Widget> _screens = [
    Content(),
    MoodJournal(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _bottomIndex,
          onTap: (index) {
            setState(() {
              _bottomIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.bedtime),
              label: AppLocalizations.of(context).home,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.mood),
              label: AppLocalizations.of(context).mood,
            )
          ],
        ),
        body: _screens[_bottomIndex]);
  }
}
