import 'package:flutter/material.dart';

const _mainColor = Colors.lightGreen;

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
                  'Clique abaixo para gerar uma frase!',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 17,
                    fontStyle: FontStyle.italic,
                    color: Colors.black,
                  ),
                ),
                RaisedButton(
                  child: Text(
                    "Nova frase",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  color: _mainColor,
                  onPressed: () => {},
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
