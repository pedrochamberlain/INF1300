//import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class AudioScreen extends StatefulWidget {
  final String url;
  final ReleaseMode releaseMode;
  AudioScreen(this.url, {loop = false})
      : releaseMode = loop ? ReleaseMode.LOOP : ReleaseMode.RELEASE;

  @override
  _AudioScreenState createState() => _AudioScreenState();
}

class _AudioScreenState extends State<AudioScreen> {
  AudioPlayer player = AudioPlayer();

  bool _firstPlay = true;
  double _volume = 0.5;

  _play() async {
    String url = widget.url;

    if (_firstPlay) {
      player.setReleaseMode(widget.releaseMode);
      await player.play(url);
      _firstPlay = false;
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Slider(
            min: 0,
            max: 1,
            value: this._volume,
            onChanged: (newValue) {
              setState(() => this._volume = newValue);
              player.setVolume(_volume);
            },
          ),
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
