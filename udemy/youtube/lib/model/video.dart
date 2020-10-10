class Video {
  String id, title, bio, img, channel;

  Video({this.id, this.title, this.bio, this.img, this.channel});

  factory Video.fromJson(Map<String, dynamic> json) {
    return Video(
      id: json['id']['videoId'],
      title: json['snippet']['title'],
      img: json['snippet']['thumbnails']['high']['url'],
      channel: json['snippet']['channelTitle'],
    );
  }
}
