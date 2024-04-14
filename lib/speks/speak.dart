import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class Speech extends StatelessWidget {
  final FlutterTts flutterTts = FlutterTts();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          flutterTts.speak('Hello, Flutter Text-to-Speech!');
        },
        child: Text('Speak'),
      ),
    );
  }
}
