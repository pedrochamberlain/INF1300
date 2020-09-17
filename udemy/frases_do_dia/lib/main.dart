import 'dart:math';

import 'package:flutter/material.dart';

const _mainColor = Colors.lightGreen;

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _currentPhrase = "Clique abaixo para gerar uma frase!";
  final _phrases = [
    'Deve ocorrer, a partir de um ponto, uma transformação. Se não ocorre, não há arte - Robert Bresson',
    'A memória da humanidade para o sofrimento passado é surpreendentemente curta. Sua imaginação para o sofrimento futuro é ainda menor. É contra esta insensibilidade que devemos lutar. Porque a humanidade está ameaçada pelas guerras daqueles que pereceram no passado sob tentativas miseráveis, que, sem dúvida, se repetirão, se as mãos de quem as tornou públicas não forem esmagadas. - Bertolt Brecht'
  ];

  void _generatePhrase() {
    var _randomIndex = new Random().nextInt(_phrases.length);
    setState(() => _currentPhrase = _phrases[_randomIndex]);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Frases do Dia',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Frases do Dia'),
          backgroundColor: _mainColor,
        ),
        body: Container(
          padding: EdgeInsets.all(16),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image.asset('assets/logo.png'),
                Text(
                  "$_currentPhrase",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 17,
                    fontStyle: FontStyle.italic,
                    color: Colors.black,
                  ),
                ),
                RaisedButton(
                  child: Text(
                    "Nova Frase",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  color: _mainColor,
                  onPressed: _generatePhrase,
                ),
              ],
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
