import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool firstPlay = true;
  AudioPlayer player = AudioPlayer();

  _play() async {
    String url =
        "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3";

    if (firstPlay) {
      await player.play(url);
      firstPlay = false;
    } else {
      player.resume();
    }
  }

  _pause() async {
    await player.pause();
  }

  _stop() async {
    await player.stop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          // TODO: Slider
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(8),
                child: GestureDetector(
                  onTap: () => _play(),
                  child: Icon(
                    Icons.play_arrow_rounded,
                    size: 24.0,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: GestureDetector(
                  onTap: () => _pause(),
                  child: Icon(
                    Icons.pause_rounded,
                    size: 24.0,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: GestureDetector(
                  onTap: () => _stop(),
                  child: Icon(
                    Icons.stop_rounded,
                    size: 24.0,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
