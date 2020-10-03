import 'package:flutter/material.dart';
import 'package:youtube/home.dart';

void main() {
  runApp(YoutubeApp());
}

class YoutubeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
