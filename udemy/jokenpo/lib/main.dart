import 'package:flutter/material.dart';
import 'package:jokenpo/game.dart';

void main() {
  runApp(JokenpoApp());
}

class JokenpoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jokenpô',
      home: Game(),
      debugShowCheckedModeBanner: false,
    );
  }
}
