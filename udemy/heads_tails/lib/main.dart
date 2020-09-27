import 'package:flutter/material.dart';
import 'package:heads_tails/home.dart';

void main() {
  runApp(HeadsTailsApp());
}

class HeadsTailsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cara ou Coroa?',
      home: Home(),
    );
  }
}
