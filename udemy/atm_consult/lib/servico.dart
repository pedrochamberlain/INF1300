import 'package:flutter/material.dart';

class Servico extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Serviços'),
        backgroundColor: Colors.lightBlue,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image.asset('images/detalhe_servico.png'),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text(
                      'Sobre a empresa',
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
                  'Consultoria',
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                  'Cálculo de preços',
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                  'Acompanhamento de projetos',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
