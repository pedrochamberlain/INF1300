import 'package:flutter/material.dart';
import 'dart:math';

class Game extends StatefulWidget {
  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  var _gameSituation = 'Escolha uma das opções abaixo:';
  var _randomImg = AssetImage('images/padrao.png');

  _selectOption(String playerChoice) {
    var options = ['pedra', 'papel', 'tesoura'];
    var appChoice = options[Random().nextInt(options.length)];

    print('User chose: $playerChoice');
    print('Computer chose: $appChoice');

    setState(() {
      this._randomImg = AssetImage('images/$appChoice.png');
    });

    if (appChoice == playerChoice) {
      setState(() {
        this._gameSituation = 'Empate!';
      });
    } else if (appChoice == 'papel' && playerChoice == 'pedra' ||
        appChoice == 'pedra' && playerChoice == 'tesoura' ||
        appChoice == 'tesoura' && playerChoice == 'papel') {
      setState(() {
        this._gameSituation = 'Você perdeu!';
      });
    } else {
      setState(() {
        this._gameSituation = 'Você ganhou!';
      });
    }
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
                this._gameSituation,
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
