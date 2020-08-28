import 'package:flutter/material.dart';

Widget helloRectangle() {
  return Container(
    color: Colors.redAccent,
  );
}

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello Rectangle'),
        ),
        body: helloRectangle(),
      ),
    ),
  );
}
