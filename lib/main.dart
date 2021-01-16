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
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          FlatButton(
            onPressed: () {
              final player = AudioCache();
              player.play('note1.wav');
            },
            child: Text(
              'Button 1',
            ),
            color: Colors.blue,
          ),
          FlatButton(
            onPressed: () {
              final player = AudioCache();
              player.play('note2.wav');
            },
            child: Text(
              'Button 2',
            ),
            color: Colors.blue,
          ),
          FlatButton(
            onPressed: () {
              final player = AudioCache();
              player.play('note3.wav');
            },
            child: Text(
              'Button 3',
            ),
            color: Colors.blue,
          ),
          FlatButton(
            onPressed: () {
              final player = AudioCache();
              player.play('note4.wav');
            },
            child: Text(
              'Button 4',
            ),
            color: Colors.blue,
          ),
          FlatButton(
            onPressed: () {
              final player = AudioCache();
              player.play('note5.wav');
            },
            child: Text(
              'Button 5',
            ),
            color: Colors.blue,
          ),
          FlatButton(
            onPressed: () {
              final player = AudioCache();
              player.play('note6.wav');
            },
            child: Text(
              'Button 6',
            ),
            color: Colors.blue,
          ),
          FlatButton(
            onPressed: () {
              final player = AudioCache();
              player.play('note7.wav');
            },
            child: Text(
              'Button 7',
            ),
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
