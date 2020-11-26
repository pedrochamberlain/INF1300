import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
            AppLocalizations.of(context).meditation,
            style: TextStyle(
                color: Colors.white,
                background: Paint()
                  ..strokeWidth = 12.0
                  ..color = Color.fromRGBO(0, 0, 0, 0.3)
                  ..style = PaintingStyle.stroke
                  ..strokeJoin = StrokeJoin.round),
          ),
          MediaScroller.audioScroller(),
          Text(
            AppLocalizations.of(context).videos,
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
            AppLocalizations.of(context).articles,
            style: TextStyle(
                color: Colors.white,
                background: Paint()
                  ..strokeWidth = 12.0
                  ..color = Color.fromRGBO(0, 0, 0, 0.3)
                  ..style = PaintingStyle.stroke
                  ..strokeJoin = StrokeJoin.round),
          ),
          MediaScroller.articleScroller(),
        ],
      ),
    );
  }
}
