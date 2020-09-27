import 'package:flutter/material.dart';
import 'package:atm_consult/home.dart';

void main() {
  runApp(ConsultApp());
}

class ConsultApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
