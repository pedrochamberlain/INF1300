import 'package:flutter/material.dart';

class MediaScroller extends StatelessWidget {
  const MediaScroller({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
