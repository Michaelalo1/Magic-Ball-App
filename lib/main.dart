import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Color.fromRGBO(19, 50, 121, 1),
      ),
      backgroundColor: Color.fromRGBO(63, 143, 237, 1),
      body: Container(
        child: Ball(),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            ballNumber = Random().nextInt(5) + 1;
            print(ballNumber);
          });
        },
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}
