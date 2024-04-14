import 'package:flutter/material.dart';

import '../QuizScreen/quiz_screen.dart';
import 'package:nenemi/pages/FinishTourScreen/finish_tour.dart';

class TourScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tour Screen Expirience")),
      body: Column(children: [
        Text("AR IS COOL"),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => QuizScreen()),
            );
          },
          child: Text("Let's start a Game!"),
        ),
      ]
          // QuizScreen
          ),
    );
  }
}
