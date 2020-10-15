class Audio {
  String title, longUrl, shortUrl;
  bool inf;
  Audio(this.title, this.shortUrl, this.longUrl, {this.inf = true});

  Audio.med()
      : title = 'Meditação',
        shortUrl =
            'http://docs.google.com/uc?export=open&id=1uYxbgc2XxfzA_LxYnjCYu_Xau5Lp7HyW',
        longUrl =
            'http://docs.google.com/uc?export=open&id=1uYxbgc2XxfzA_LxYnjCYu_Xau5Lp7HyW',
        inf = false;
  Audio.foc()
      : title = 'Foco',
        shortUrl =
            'http://docs.google.com/uc?export=open&id=1uYxbgc2XxfzA_LxYnjCYu_Xau5Lp7HyW',
        longUrl =
            'http://docs.google.com/uc?export=open&id=1uYxbgc2XxfzA_LxYnjCYu_Xau5Lp7HyW',
        inf = true;
  Audio.son()
      : title = 'Sono',
        shortUrl =
            'http://docs.google.com/uc?export=open&id=1uYxbgc2XxfzA_LxYnjCYu_Xau5Lp7HyW',
        longUrl =
            'http://docs.google.com/uc?export=open&id=1uYxbgc2XxfzA_LxYnjCYu_Xau5Lp7HyW',
        inf = true;
}
