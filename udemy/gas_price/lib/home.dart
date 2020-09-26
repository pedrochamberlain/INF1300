import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _result = "";
  TextEditingController _controllerAlcohol = TextEditingController();
  TextEditingController _controllerGasoline = TextEditingController();

  void _calculate() {
    double alcoholPrice = double.tryParse(_controllerAlcohol.text);
    double gasolinePrice = double.tryParse(_controllerGasoline.text);

    if (alcoholPrice <= 0.0 ||
        alcoholPrice == null ||
        gasolinePrice <= 0.0 ||
        gasolinePrice == null) {
      setState(() {
        _result = "Valor inválido";
      });
    } else {
      if ((alcoholPrice / gasolinePrice) >= 0.7) {
        setState(() {
          _result = 'Melhor abastecer com gasolina';
        });
      } else {
        setState(() {
          _result = 'Melhor abastecer com gasolina';
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Álcool ou Gasolina?"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(bottom: 32),
                  child: Image.asset('images/logo.png')),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text(
                  'Saiba qual é a melhor opção para seu carro:',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Preço do Álcool'),
                style: TextStyle(
                  fontSize: 22,
                ),
                controller: _controllerAlcohol,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Preço da Gasolina'),
                style: TextStyle(
                  fontSize: 22,
                ),
                controller: _controllerGasoline,
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, bottom: 20),
                child: RaisedButton(
                  onPressed: this._calculate,
                  color: Colors.blueAccent,
                  textColor: Colors.white,
                  child: Text(
                    'Calcular',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: SingleChildScrollView(
                  child: Text(
                    this._result,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
