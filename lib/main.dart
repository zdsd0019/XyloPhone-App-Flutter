import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Xylophone',
          ),
        ),
        body: Xylophone(),
      ),
    );
  }
}

class Xylophone extends StatefulWidget {
  @override
  _XylophoneState createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          FlatButton(
            onPressed: () {
              playSound(1);
            },
            child: Text(
              'Button 1',
            ),
            color: Colors.red,
          ),
          FlatButton(
            onPressed: () {
              playSound(2);
            },
            child: Text(
              'Button 2',
            ),
            color: Colors.orange,
          ),
          FlatButton(
            onPressed: () {
              playSound(3);
            },
            child: Text(
              'Button 3',
            ),
            color: Colors.yellow,
          ),
          FlatButton(
            onPressed: () {
              playSound(4);
            },
            child: Text(
              'Button 4',
            ),
            color: Colors.green,
          ),
          FlatButton(
            onPressed: () {
              playSound(5);
            },
            child: Text(
              'Button 5',
            ),
            color: Colors.green.shade900,
          ),
          FlatButton(
            onPressed: () {
              playSound(6);
            },
            child: Text(
              'Button 6',
            ),
            color: Colors.blue.shade900,
          ),
          FlatButton(
            onPressed: () {
              playSound(7);
            },
            child: Text(
              'Button 7',
            ),
            color: Colors.purple,
          ),
        ],
      ),
    );
  }
}
