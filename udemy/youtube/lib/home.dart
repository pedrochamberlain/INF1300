import 'package:flutter/material.dart';
import 'package:youtube/views/homepage.dart';
import 'package:youtube/views/subscriptions.dart';
import 'package:youtube/views/trending.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  List<Widget> views = [
    Homepage(),
    Trending(),
    Subscriptions(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'images/logo.png',
          width: 98,
          height: 22,
        ),
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        iconTheme: IconThemeData(
          color: Colors.grey,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.videocam),
            onPressed: () => {},
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () => {},
          ),
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () => {},
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: views[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.red,
        currentIndex: _currentIndex,
        onTap: (index) => {
          setState(() => {_currentIndex = index})
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.whatshot),
            title: Text('Trending'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.subscriptions),
            title: Text('Subscriptions'),
          ),
        ],
      ),
    );
  }
}
