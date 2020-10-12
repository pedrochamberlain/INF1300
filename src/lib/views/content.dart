import 'package:flutter/material.dart';
import 'package:nuance/widgets/mediascroller.dart';

class Content extends StatefulWidget {
  @override
  _ContentState createState() => _ContentState();
}

class _ContentState extends State<Content> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 35.0)),
          Text(
            'Meditação',
            style: TextStyle(
                color: Colors.white,
                background: Paint()
                  ..strokeWidth = 12.0
                  ..color = Color.fromRGBO(0, 0, 0, 0.3)
                  ..style = PaintingStyle.stroke
                  ..strokeJoin = StrokeJoin.round),
          ),
          MediaScroller(builder: (snapshot, index) {
            return Container();
          }, futureGetter: () {
            return Future(() {});
          }),
          Text(
            'Vídeos',
            style: TextStyle(
                color: Colors.white,
                background: Paint()
                  ..strokeWidth = 12.0
                  ..color = Color.fromRGBO(0, 0, 0, 0.3)
                  ..style = PaintingStyle.stroke
                  ..strokeJoin = StrokeJoin.round),
          ),
          MediaScroller.videoScroller(),
          Text(
            'Artigos',
            style: TextStyle(
                color: Colors.white,
                background: Paint()
                  ..strokeWidth = 12.0
                  ..color = Color.fromRGBO(0, 0, 0, 0.3)
                  ..style = PaintingStyle.stroke
                  ..strokeJoin = StrokeJoin.round),
          ),
          MediaScroller(builder: (snapshot, index) {
            return Container();
          }, futureGetter: () {
            return Future(() {});
          }),
        ],
      ),
    );
  }
}
