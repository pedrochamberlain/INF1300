import 'package:flutter/material.dart';
import 'package:flutter_youtube/flutter_youtube.dart';
import 'package:nuance/models/video.dart';
import 'package:nuance/utils/api.dart';

class MediaScroller extends StatelessWidget {
  final String type;

  const MediaScroller({Key key, @required this.type}) : super(key: key);

  _listVideos() {
    API api = API();
    return api.youtubeSearch("saúde mental");
  }

  @override
  Widget build(BuildContext context) {
    if (type == 'vid') {
      return FutureBuilder<List<Video>>(
        future: _listVideos(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
            case ConnectionState.waiting:
              return Center(
                child: CircularProgressIndicator(),
              );

            case ConnectionState.active:
            case ConnectionState.done:
              if (snapshot.hasData) {
              } else {
                return Container(
                  height: 150,
                  child: Center(
                    child: Text(
                      "No videos were found.",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                );
              }
          }
        },
      );
    } else {
      return Container(
        child: Expanded(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(3.0, 12.0, 3.0, 16.0),
                child: Card(
                  color: Colors.yellow,
                  child: Container(
                    width: 150,
                    child: Text('TEXTO'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(3.0, 12.0, 3.0, 16.0),
                child: Card(
                  color: Colors.red,
                  child: Container(
                    width: 150,
                    child: Text('TEXTO'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(3.0, 12.0, 3.0, 16.0),
                child: Card(
                  color: Colors.pink,
                  child: Container(
                    width: 150,
                    child: Text('TEXTO'),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
}
