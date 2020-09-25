import 'package:flutter/material.dart';

class Game extends StatefulWidget {
  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  var _randomImg = AssetImage('images/padrao.png');

  _selectOption(String choice) {
    print('User chose: $choice');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jokenpô'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 32, bottom: 16),
              child: Text(
                'Escolha do App',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Image(image: this._randomImg),
            Padding(
              padding: EdgeInsets.only(top: 32, bottom: 16),
              child: Text(
                'Escolha uma das opções abaixo:',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                  onTap: () => this._selectOption('pedra'),
                  child: Image.asset('images/pedra.png', height: 100),
                ),
                GestureDetector(
                  onTap: () => this._selectOption('papel'),
                  child: Image.asset('images/papel.png', height: 100),
                ),
                GestureDetector(
                  onTap: () => this._selectOption('tesoura'),
                  child: Image.asset('images/tesoura.png', height: 100),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
