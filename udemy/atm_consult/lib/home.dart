import 'package:flutter/material.dart';

import 'package:atm_consult/cliente.dart';
import 'package:atm_consult/contato.dart';
import 'package:atm_consult/empresa.dart';
import 'package:atm_consult/servico.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ATM Consultoria'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('images/logo.png'),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Empresa(),
                      ),
                    ),
                    child: Image.asset('images/menu_empresa.png'),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Servico(),
                      ),
                    ),
                    child: Image.asset('images/menu_servico.png'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Cliente(),
                      ),
                    ),
                    child: Image.asset('images/menu_cliente.png'),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Contato(),
                      ),
                    ),
                    child: Image.asset('images/menu_contato.png'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
