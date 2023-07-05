import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

void main() {
  runApp(const XyloPhone());
}

class XyloPhone extends StatelessWidget {
  const XyloPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              _buttonsXylophone(colorName: Colors.red, toneNumber: 1),
              _buttonsXylophone(colorName: Colors.orange, toneNumber: 2),
              _buttonsXylophone(colorName: Colors.yellow, toneNumber: 3),
              _buttonsXylophone(colorName: Colors.green, toneNumber: 4),
              _buttonsXylophone(colorName: Colors.teal, toneNumber: 5),
              _buttonsXylophone(colorName: Colors.blue, toneNumber: 6),
              _buttonsXylophone(colorName: Colors.purple, toneNumber: 7),
            ],
          ),
        ),
      ),
    );
  }

  Expanded _buttonsXylophone(
      {required Color colorName, required int toneNumber}) {
    return Expanded(
      child: GestureDetector(
        onTap: () async {
          final player = AudioPlayer();
          await player.setAsset('assets/music/note$toneNumber.wav');
          player.play();
        },
        child: Container(
          color: colorName,
        ),
      ),
    );
  }
}
