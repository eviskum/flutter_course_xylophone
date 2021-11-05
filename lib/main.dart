import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Xylophone());
}

class Xylophone extends StatelessWidget {
  const Xylophone({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _playKey(Colors.red, 1),
                _playKey(Colors.orange, 2),
                _playKey(Colors.yellow, 3),
                _playKey(Colors.lightGreen, 4),
                _playKey(Colors.green, 5),
                _playKey(Colors.blue, 6),
                _playKey(Colors.purple, 7),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _playKey(Color color, int playKey) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          final player = AudioCache();
          player.play('note$playKey.wav');
        },
        child: Container(
          margin: EdgeInsets.all(0.0),
          // width: 100,
          // height: 50,
          color: color,
        ),
      ),
    );
  }
}
