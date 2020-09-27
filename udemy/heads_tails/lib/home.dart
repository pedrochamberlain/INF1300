import 'package:flutter/material.dart';
import 'package:heads_tails/result.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset('images/logo.png'),
            GestureDetector(
              onTap: () => {
                context,
                MaterialPageRoute(
                  builder: (context) => Result(),
                )
              },
              child: Image.asset('images/botao_jogar.png'),
            )
          ],
        ),
      ),
    );
  }
}
