import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  AudioPlayer player = AudioPlayer();

  _play() async {
    String url =
        "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3";
    await player.play(url);
  }

  @override
  Widget build(BuildContext context) {
    _play();

    return Container();
  }
}
