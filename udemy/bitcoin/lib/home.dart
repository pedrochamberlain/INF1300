import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert'; // for json.decode

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _result = '';

  Future<Map> _getBitcoinPrice() async {
    String url = 'http://blockchain.info/ticker';
    http.Response siteResponse = await http.get(url);
    Map<String, dynamic> mappedResponse = json.decode(siteResponse.body);
    return mappedResponse;
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
                child: FutureBuilder<Map>(
                  future: _getBitcoinPrice(),
                  builder: (context, snapshot) {
                    switch (snapshot.connectionState) {
                      case ConnectionState.none: // unused
                      case ConnectionState.active: //unused
                      case ConnectionState.waiting:
                        print('Waiting for Connection');
                        _result = 'Loading...';
                        break;
                      case ConnectionState.done:
                        print('Connection Done');
                        snapshot.hasError
                            ? _result = 'API failed.'
                            : _result = "R\$ ${snapshot.data['BRL']['buy']}";
                        break;
                    }

                    return Text(
                      '$_result',
                      style: TextStyle(
                        fontSize: 32,
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
