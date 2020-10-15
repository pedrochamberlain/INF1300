import 'package:flutter/material.dart';
import 'package:nuance/views/audioscreen.dart';

class DurationChoice extends StatefulWidget {
  final bool infinity;
  final String shortUrl;
  final String longUrl;
  DurationChoice(this.shortUrl, this.longUrl, {this.infinity = true});

  @override
  _DurationChoiceState createState() => _DurationChoiceState();
}

class _DurationChoiceState extends State<DurationChoice> {
  List<Widget> _buttons;

  @override
  Widget build(BuildContext context) {
    _buttons = [
      RaisedButton(
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return AudioScreen(widget.shortUrl);
            }));
          },
          child: Text(
            '15 minutos',
            style: TextStyle(color: Colors.black),
          )),
      RaisedButton(
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return AudioScreen(widget.longUrl);
            }));
          },
          child: Text(
            '30 minutos',
            style: TextStyle(color: Colors.black),
          )),
    ];
    if (widget.infinity) {
      _buttons.add(RaisedButton(
        onPressed: () {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) {
            return AudioScreen(widget.longUrl, loop: true);
          }));
        },
        child: Icon(
          Icons.loop,
          color: Colors.black,
        ),
      ));
    }
    return Scaffold(
        appBar: AppBar(
          title: Text("Escolha uma duração"),
        ),
        body: Container(
          color: Colors.purple[50],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Tocar por:",
                  style: TextStyle(fontSize: 25),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: _buttons,
              ),
            ],
          ),
        ));
  }
}
