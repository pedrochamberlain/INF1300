import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Frases do Dia',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Frases do Dia'),
          backgroundColor: Colors.lightGreen,
        ),
        body: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: <Widget>[],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
