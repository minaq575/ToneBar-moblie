import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as dev;

class ToneBar extends StatelessWidget {
  final AudioPlayer audioPlayer = AudioPlayer();
  final Color backgroundColor;
  final String labelText;
  final String sound;
  ToneBar(
      {super.key,
      required this.backgroundColor,
      required this.labelText,
      required this.sound});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        enableFeedback: false,
        backgroundColor: backgroundColor,
        textStyle: const TextStyle(fontSize: 25),
        padding: const EdgeInsets.all(20),
        foregroundColor: Colors.white,
      ),
      onPressed: () async {
        await audioPlayer.play(
          AssetSource(sound),
        );
        dev.log(sound); //ให้เเสดงผลหน้าdebug
        dev.log('Play $labelText'); //ให้เเสดงผลหน้าdebug
      },
      child: Text(labelText),
    );
  }
}
