import 'package:bitcoin/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BitcoinApp());
}

class BitcoinApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
