import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blueAccent,
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text('Ask Me Anything'),
            centerTitle: true,
          ),
          body: MagicBody(),
        ),
      ),
    );

class MagicBody extends StatefulWidget {
  @override
  _MagicBodyState createState() => _MagicBodyState();
}

class _MagicBodyState extends State<MagicBody> {
  int ballNo = Random().nextInt(5) + 1;
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "$counter",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          SizedBox(height: 20),
          FlatButton(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onPressed: () {
              setState(() {
                ballNo = Random().nextInt(5) + 1;
                ++counter;
              });
            },
            child: Image.asset("images/ball$ballNo.png"),
          ),
          SizedBox(height: 20),
          RaisedButton(
            elevation: 8,
            color: Colors.white,
            onPressed: () {
              setState(() {
                counter = 0;
              });
            },
            child: Text('Reset Counter'),
          )
        ],
      ),
    );
  }
}
