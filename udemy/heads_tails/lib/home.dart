import 'package:flutter/material.dart';
import 'package:heads_tails/result.dart';
import 'dart:math';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void _accessResult() {
    var possibleResults = ['cara', 'coroa'];
    var randInt = Random().nextInt(possibleResults.length);
    var result = possibleResults[randInt];

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Result(result),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset('images/logo.png'),
            GestureDetector(
              onTap: this._accessResult,
              child: Image.asset('images/botao_jogar.png'),
            )
          ],
        ),
      ),
    );
  }
}
