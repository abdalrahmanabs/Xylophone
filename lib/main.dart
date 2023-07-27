import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(Xylophone());
}

class Xylophone extends StatelessWidget {
  const Xylophone({Key? key}) : super(key: key);

  void playSound(int soundIndex) async {
    final player = AudioPlayer();
     player.play(AssetSource('note$soundIndex.wav'));
  }

  Widget buildKey(int soundIndex, Color color) {
    return Expanded(
      child: TextButton(
        onPressed: () => playSound(soundIndex),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
        ),
        child: const SizedBox(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(1, const Color(0xFFF94144)),
              buildKey(2, const Color(0xFFF37737)),
              buildKey(3, const Color(0xFFFDB02D)),
              buildKey(4, const Color(0xFFF9C74F)),
              buildKey(5, const Color(0xFF90BE6D)),
              buildKey(6, const Color(0xFF45A29E)),
              buildKey(7, const Color(0xFF4D908E)),
            ],
          ),
        ),
      ),
    );
  }
}