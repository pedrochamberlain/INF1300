import 'package:flutter/material.dart';
import 'package:nuance/mediascroller.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple,
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.mood),
              label: 'Mood',
            )
          ],
        ),
        body: SizedBox(
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
              MediaScroller(),
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
              MediaScroller(),
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
              MediaScroller(),
            ],
          ),
        ));
  }
}
