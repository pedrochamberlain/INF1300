import 'package:flutter/material.dart';
import 'package:player/home.dart';

void main() {
  runApp(PlayerApp());
}

class PlayerApp extends StatelessWidget {
  const PlayerApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
