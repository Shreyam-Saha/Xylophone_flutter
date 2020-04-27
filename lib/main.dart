import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int n) {
    final player = AudioCache();
    player.play('note$n.wav');
  }

  Expanded buildKey(int num, String name,Color color) {
   return Expanded(
      child: RaisedButton(
        child: Text('$name'),
        textColor: Colors.white,
        color: color,
        onPressed: () {
          playSound(num);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(1,'Sa',Colors.deepPurple),
                buildKey(2,'Re',Colors.indigo),
                buildKey(3,'Ga',Colors.blue),
                buildKey(4,'Ma',Colors.green),
                buildKey(5,'Pa',Colors.yellow),
                buildKey(6,'Dha',Colors.deepOrange),
                buildKey(7,'Ni',Colors.red),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
