import 'package:flutter/material.dart';
import 'package:nuance/splashscreen.dart';

void main() {
  runApp(NuanceApp());
}

class NuanceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nuance',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: 'Open Sans',
      ),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
