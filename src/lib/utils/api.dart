import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:nuance/models/video.dart';

const YOUTUBE_API_KEY = "AIzaSyBMMq3vt_4KMnKId3yydOgjjwSLgH_MKz0";
const BASE_URL = "https://www.googleapis.com/youtube/v3/search";

class API {
  Future<List<Video>> youtubeSearch(String query) async {
    List<Video> videoList;

    http.Response response = await http.get(
      BASE_URL +
          "?part=snippet" +
          "&type=video" +
          "&maxResults=10" +
          "&order=date" +
          "&key=$YOUTUBE_API_KEY" +
          // "&channelId=$CHANNEL_ID" +
          "&q=$query",
    );

    if (response.statusCode == 200) {
      Map<String, dynamic> responseData = json.decode(response.body);

      videoList = responseData["items"].map<Video>((map) {
        return Video.fromJson(map);
      }).toList();
    }

    return videoList;
  }
}