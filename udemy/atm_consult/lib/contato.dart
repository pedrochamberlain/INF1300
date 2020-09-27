import 'package:flutter/material.dart';

class Contato extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Serviços'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image.asset('images/detalhe_contato.png'),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text(
                      'Contato',
                      style: TextStyle(
                        fontSize: 26,
                        color: Colors.lightBlue,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                  'atendimento@empresa.com.br',
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                  'Telefone: 1234-5678',
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                  'Celular: 1234-5678',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
