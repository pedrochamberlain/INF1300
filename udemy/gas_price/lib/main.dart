import 'package:flutter/material.dart';
import 'package:gas_price/home.dart';

void main() {
  runApp(GasPriceApp());
}

class GasPriceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
