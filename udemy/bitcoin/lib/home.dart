import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _price = '0';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(32),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('images/logo.png'),
              Padding(
                padding: EdgeInsets.only(top: 30, bottom: 30),
                child: Text(
                  'R\$ $_price',
                  style: TextStyle(
                    fontSize: 32,
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () => {},
                color: Colors.orange,
                child: Text(
                  "Atualizar",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
              )
            ],
          ),
        ),
      ),
    );
  }
}
