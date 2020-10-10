class Video {
  String id, title, img;

  Video({this.id, this.title, this.img});

  factory Video.fromJson(Map<String, dynamic> json) {
    return Video(
      id: json['id']['videoId'],
      title: json['snippet']['title'],
      img: json['snippet']['thumbnails']['high']['url'],
    );
  }
}
