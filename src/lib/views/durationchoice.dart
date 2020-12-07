import 'dart:async';

import 'package:battery/battery.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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

  Battery _battery = Battery();
  BatteryState _batteryState;

  StreamSubscription<BatteryState> _batteryStateSubscription;

  @override
  void initState() {
    super.initState();
    _batteryStateSubscription =
        _battery.onBatteryStateChanged.listen((BatteryState state) {
      setState(() {
        _batteryState = state;
      });
    });
    Future.delayed(Duration.zero, () => _showLowBatteryDialog(context));
  }

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
            '15 ' + AppLocalizations.of(context).minutes,
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
            '30 ' + AppLocalizations.of(context).minutes,
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
        title: Text(AppLocalizations.of(context).duration),
      ),
      body: Container(
        color: Colors.purple[50],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                AppLocalizations.of(context).play_for,
                style: TextStyle(fontSize: 25),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: _buttons,
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    if (_batteryStateSubscription != null) {
      _batteryStateSubscription.cancel();
    }
  }

  _showLowBatteryDialog(BuildContext context) async {
    int batteryLevel = await _battery.batteryLevel;
    if (batteryLevel <= 30 && _batteryState != BatteryState.charging) {
      return showDialog<void>(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(AppLocalizations.of(context).low_battery),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text(AppLocalizations.of(context).low_battery_desc),
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                child: Text('Ok'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    } else {
      return null;
    }
  }
}
