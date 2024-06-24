import 'package:flutter/material.dart';
import 'package:week4action/tone_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Week4 Audio'),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                  child: ToneBar(
                backgroundColor: Colors.red,
                labelText: 'C',
                sound: 'sound/xylophone/note1.wav',
              )),
              Expanded(
                  child: ToneBar(
                backgroundColor: Colors.orange,
                labelText: 'D',
                sound: 'sound/xylophone/note2.wav',
              )),
              Expanded(
                  child: ToneBar(
                backgroundColor: Colors.yellow,
                labelText: 'E',
                sound: 'sound/xylophone/note3.wav',
              )),
              Expanded(
                  child: ToneBar(
                backgroundColor: Colors.greenAccent,
                labelText: 'F',
                sound: 'sound/xylophone/note4.wav',
              )),
              Expanded(
                  child: ToneBar(
                backgroundColor: Colors.green,
                labelText: 'G',
                sound: 'sound/xylophone/note5.wav',
              )),
              Expanded(
                  child: ToneBar(
                backgroundColor: Colors.pink,
                labelText: 'A',
                sound: 'sound/xylophone/note6.wav',
              )),
              Expanded(
                  child: ToneBar(
                backgroundColor: Colors.purple,
                labelText: 'B',
                sound: 'sound/xylophone/note7.wav',
              )),
            ],
          ),
        ),
      ),
    );
  }
}
