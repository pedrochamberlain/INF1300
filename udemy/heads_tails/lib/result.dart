import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  final String result;

  Result(this.result);

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  void _returnHome() {
    Navigator.pop(context);
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
            Image.asset('images/moeda_${widget.result}.png'),
            GestureDetector(
              onTap: this._returnHome,
              child: Image.asset('images/botao_voltar.png'),
            )
          ],
        ),
      ),
    );
  }
}
