import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
      body: Container(),
    );
  }
}
