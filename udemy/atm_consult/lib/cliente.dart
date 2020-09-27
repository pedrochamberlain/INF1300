import 'package:flutter/material.dart';

class Cliente extends StatefulWidget {
  @override
  _ClienteState createState() => _ClienteState();
}

class _ClienteState extends State<Cliente> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clientes'),
        backgroundColor: Colors.lightGreen,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image.asset('images/detalhe_cliente.png'),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text(
                      'Clientes',
                      style: TextStyle(
                        fontSize: 26,
                        color: Colors.lightGreen,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Image.asset('images/cliente1.png'),
              ),
              Text('Empresa de Software'),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Image.asset('images/cliente2.png'),
              ),
              Text('Empresa de auditoria'),
            ],
          ),
        ),
      ),
    );
  }
}
