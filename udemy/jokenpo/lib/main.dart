import 'package:flutter/material.dart';
import 'package:jokenpo/game.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Jokenpô',
      home: Game(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
