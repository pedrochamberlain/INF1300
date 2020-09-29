import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert'; // for json.decode

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _price = '0';

  void _getBitcoinPrice() async {
    String url = 'http://blockchain.info/ticker';
    http.Response siteResponse = await http.get(url);

    Map<String, dynamic> mappedResponse = json.decode(siteResponse.body);
    setState(() => {_price = mappedResponse['BRL']['buy'].toString()});
  }

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
                onPressed: _getBitcoinPrice,
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
