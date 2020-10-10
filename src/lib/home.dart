import 'package:flutter/material.dart';
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
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.mood),
              label: 'Mood',
            )
          ],
        ),
        body: _screens[_bottomIndex]);
  }
}
