import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:youtube/model/video.dart';

const YOUTUBE_API_KEY = "AIzaSyBukn4ei_b-UE9l_s0d-Q3NBXSqvfPx3xI";
const CHANNEL_ID = "UCU9Goiior2gkR8q7Q98Qgbg";
const BASE_URL = "https://www.googleapis.com/youtube/v3/search";

class API {
  Future<List<Video>> search(String query) async {
    List<Video> videos;

    http.Response response = await http.get(
      BASE_URL +
          "?part=snippet" +
          "&type=video" +
          "&maxResults=20" +
          "&order=date" +
          "&key=$YOUTUBE_API_KEY" +
          "&channelId=$CHANNEL_ID" +
          "&q=$query",
    );

    if (response.statusCode == 200) {
      Map<String, dynamic> responseData = json.decode(response.body);

      videos = responseData["items"].map<Video>((map) {
        return Video.fromJson(map);
      }).toList();
    }

    return videos;
  }
}
