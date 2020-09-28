import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () => print('splash done!'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.deepPurple[500],
                Colors.deepPurple[800],
              ]),
        ),
        child: Center(
          child: Text(
            'nuancé',
            style: TextStyle(
              fontSize: 48.0,
              fontWeight: FontWeight.w300,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
