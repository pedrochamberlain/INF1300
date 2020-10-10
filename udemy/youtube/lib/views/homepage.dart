import 'package:flutter/material.dart';
import 'package:youtube/api.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    API api = API();
    api.search("Jean-Marie Straub");

    return Container(
      child: Center(
        child: Text(
          'Homepage',
          style: TextStyle(
            fontSize: 50,
          ),
        ),
      ),
    );
  }
}
