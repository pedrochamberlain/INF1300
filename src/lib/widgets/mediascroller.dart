import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webfeed/webfeed.dart';
import 'package:flutter_youtube/flutter_youtube.dart';
import 'package:nuance/models/video.dart';
import 'package:nuance/utils/api.dart';

class MediaScroller extends StatelessWidget {
  final String type;

  const MediaScroller({Key key, @required this.type}) : super(key: key);

  _listArticles() {
    API api = API();
    return api.getRssFeed();
  }

  _listVideos() {
    API api = API();
    return api.youtubeSearch("saúde mental");
  }

  @override
  Widget build(BuildContext context) {
    _listArticles();
    switch (type) {
      case 'vid':
        return FutureBuilder<List<Video>>(
          future: _listVideos(),
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
                  ),
                );

              case ConnectionState.active:
              case ConnectionState.done:
                if (snapshot.hasData) {
                  return Container(
                    child: Expanded(
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
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
                              padding: const EdgeInsets.fromLTRB(
                                  3.0, 12.0, 3.0, 16.0),
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
                        },
                        separatorBuilder: (context, index) => Divider(
                          height: 0,
                          color: Colors.transparent,
                        ),
                        itemCount: snapshot.data.length,
                      ),
                    ),
                  );
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

      case 'txt':
        return FutureBuilder<RssFeed>(
          future: _listArticles(),
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
                  ),
                );

              case ConnectionState.active:
              case ConnectionState.done:
                if (snapshot.hasData) {
                  return Container(
                    child: Expanded(
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          final article = snapshot.data.items[index];

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
                              padding: const EdgeInsets.fromLTRB(
                                  3.0, 12.0, 3.0, 16.0),
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
                        },
                        separatorBuilder: (context, index) => Divider(
                          height: 0,
                          color: Colors.transparent,
                        ),
                        itemCount: snapshot.data.items.length,
                      ),
                    ),
                  );
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
      default:
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
