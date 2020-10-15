import 'dart:async';

import 'package:flutter/material.dart';
import 'package:nuance/models/audio.dart';
import 'package:nuance/views/durationchoice.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webfeed/webfeed.dart';
import 'package:flutter_youtube/flutter_youtube.dart';
import 'package:nuance/models/video.dart';
import 'package:nuance/utils/api.dart';

/*<Functions for videoScroller>*/
Future<List<Video>> _listVideos() {
  API api = API();
  return api.youtubeSearch("saúde mental");
}

Widget _videoBuilder(context, snapshot, index) {
  Video video = snapshot.data[index];

  return GestureDetector(
    onTap: () => {
      FlutterYoutube.playYoutubeVideoById(
        apiKey: YOUTUBE_API_KEY,
        videoId: video.id,
        autoPlay: true,
        fullScreen: true,
      )
    },
    child: Padding(
      padding: const EdgeInsets.fromLTRB(3.0, 12.0, 3.0, 16.0),
      child: Card(
        color: Colors.yellow,
        child: Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(video.img),
            ),
          ),
          child: Text(video.title),
        ),
      ),
    ),
  );
}
/*<\Functions for videoScroller>*/

/*<Functions for articleScroller>*/
Future<List<RssItem>> _listArticles() {
  API api = API();
  return api.getRssFeed();
}

Widget _articleBuilder(context, snapshot, index) {
  final article = snapshot.data[index];

  return GestureDetector(
    onTap: () async {
      String articleUrl = article.link;
      if (await canLaunch(articleUrl)) {
        await launch(articleUrl);
      } else {
        throw 'Could not launch $articleUrl';
      }
    },
    child: Padding(
      padding: const EdgeInsets.fromLTRB(3.0, 12.0, 3.0, 16.0),
      child: Card(
        color: Colors.purple[200],
        child: Container(
          height: 150,
          width: 150,
          child: Center(
            child: Text(
              article.title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
/*<\Functions for articleScroller>*/

/*<Functions for audioScroller>*/
Future<List<Audio>> _listAudios() async {
  return await Future(() => [Audio.foc(), Audio.med(), Audio.son()]);
}

Widget _audioBuilder(context, snapshot, index) {
  Audio audio = snapshot.data[index];
  return GestureDetector(
    onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DurationChoice(
                  audio.shortUrl, audio.longUrl,
                  infinity: audio.inf)));
    },
    child: Padding(
      padding: const EdgeInsets.fromLTRB(3.0, 12.0, 3.0, 16.0),
      child: Card(
        color: Colors.purple[200],
        child: Container(
          height: 150,
          width: 150,
          child: Center(
            child: Text(
              audio.title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
/*<\Functions for audioScroller>*/

class MediaScroller extends StatelessWidget {
  final Future<dynamic> Function() futureGetter;

  final Widget Function(dynamic, dynamic, int) builder;

  const MediaScroller(
      {Key key, @required this.futureGetter, @required this.builder})
      : super(key: key);

  MediaScroller.videoScroller()
      : futureGetter = _listVideos,
        builder = _videoBuilder;

  MediaScroller.articleScroller()
      : futureGetter = _listArticles,
        builder = _articleBuilder;

  MediaScroller.audioScroller()
      : futureGetter = _listAudios,
        builder = _audioBuilder;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<dynamic>(
      future: futureGetter(),
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.none:
          case ConnectionState.waiting:
            return Center(
                child: Padding(
              padding: const EdgeInsets.all(57.0),
              child: CircularProgressIndicator(
                backgroundColor: Colors.black,
              ),
            ));

          case ConnectionState.active:
          case ConnectionState.done:
            if (snapshot.hasData) {
              return Container(
                child: Expanded(
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) => Divider(
                              height: 0,
                              color: Colors.transparent,
                            ),
                        itemCount: snapshot.data.length,
                        itemBuilder: (context, index) {
                          return builder(context, snapshot, index);
                        })),
              );
            } else {
              return Container(
                  height: 150,
                  child: Center(
                    child: Text(
                      "Content not found",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ));
            }
        }
        return Container();
      },
    );
  }
}

/*
return Container(
                    child: Expanded(
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) ,
                        separatorBuilder: (context, index) => Divider(
                          height: 0,
                          color: Colors.transparent,
                        ),
                        itemCount: snapshot.data.items.length,
                      ),
                    ),
                  );
*/
