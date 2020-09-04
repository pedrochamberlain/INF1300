import 'package:flutter/material.dart';

class Pair extends StatelessWidget {
  const Pair({
    Key key,
    @required this.imgFile,
    @required this.title,
  })  : assert(imgFile != null),
        assert(title != null),
        super(key: key);

  final String imgFile;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.asset(imgFile),
          Text(title),
        ],
      ),
    );
  }
}
