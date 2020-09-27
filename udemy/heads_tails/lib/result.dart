import 'package:flutter/material.dart';
import 'dart:math';

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var possibleResults = ['cara', 'coroa'];
    var randInt = Random().nextInt(possibleResults.length);
    var result = possibleResults[randInt];

    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset('images/moeda_$result.png'),
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Image.asset('images/botao_voltar.png'),
            )
          ],
        ),
      ),
    );
  }
}
