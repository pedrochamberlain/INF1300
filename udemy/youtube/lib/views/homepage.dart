import 'package:flutter/material.dart';
import 'package:flutter_youtube/flutter_youtube.dart';
import 'package:youtube/api.dart';
import 'package:youtube/model/video.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  _listVideos() {
    API api = API();
    return api.search("");
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Video>>(
      future: _listVideos(),
      // ignore: missing_return
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
              return ListView.separated(
                itemBuilder: (context, index) {
                  Video video = snapshot.data[index];

                  return GestureDetector(
                    onTap: () => {
                      FlutterYoutube.playYoutubeVideoById(
                          apiKey: YOUTUBE_API_KEY,
                          videoId: video.id,
                          autoPlay: true,
                          fullScreen: true)
                    },
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 185,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(video.img),
                            ),
                          ),
                        ),
                        ListTile(
                          title: Text(video.title),
                          subtitle: Text(video.channel),
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) => Divider(
                  height: 3,
                  color: Colors.grey,
                ),
                itemCount: snapshot.data.length,
              );
            } else {
              return Center(
                child: Text(
                  "No videos were found.",
                  style: TextStyle(fontSize: 24),
                ),
              );
            }
        }
      },
    );
  }
}
