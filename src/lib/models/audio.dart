class Audio {
  String title, longUrl, shortUrl;
  bool inf;
  Audio(this.title, this.shortUrl, this.longUrl, {this.inf = true});

  Audio.med()
      : title = 'Meditação Guiada',
        shortUrl =
            'http://docs.google.com/uc?export=open&id=1uYxbgc2XxfzA_LxYnjCYu_Xau5Lp7HyW',
        longUrl =
            'http://docs.google.com/uc?export=open&id=1uYxbgc2XxfzA_LxYnjCYu_Xau5Lp7HyW',
        inf = false;
  Audio.foc()
      : title = 'Música para concentração e foco',
        shortUrl =
            'http://docs.google.com/uc?export=open&id=1uYxbgc2XxfzA_LxYnjCYu_Xau5Lp7HyW',
        longUrl =
            'http://docs.google.com/uc?export=open&id=1uYxbgc2XxfzA_LxYnjCYu_Xau5Lp7HyW',
        inf = true;
  Audio.son()
      : title = 'Sono Repousante',
        shortUrl =
            'http://docs.google.com/uc?export=open&id=1uYxbgc2XxfzA_LxYnjCYu_Xau5Lp7HyW',
        longUrl =
            'http://docs.google.com/uc?export=open&id=1uYxbgc2XxfzA_LxYnjCYu_Xau5Lp7HyW',
        inf = true;
}
