import 'package:flutter/material.dart';

import 'question.dart';
import 'question_list.dart';

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentQuestionIndex = 0;
  int score = 0;

  void checkAnswer(WidgetOption option) {
    if (option.isCorrect) {
      score++;
    }

    if (currentQuestionIndex < questions.length - 1) {
      setState(() {
        currentQuestionIndex++;
      });
    } else {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  ResultScreen(score: score, total: questions.length)));
    }
  }

  @override
  Widget build(BuildContext context) {
    WidgetQuestion question = questions[currentQuestionIndex];
    return Scaffold(
      appBar: AppBar(
        title: Text("Test about: Real del Monte"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image.asset(
            //   "asstes/images/splash/nenemi-logo.png",
            //   width: 450,
            //   height: 200,
            // ),
            Text(
              question.text,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ...question.options.map((option) => ElevatedButton(
                  onPressed: () => checkAnswer(option),
                  child: Text(option.text),
                )),
          ],
        ),
      ),
    );
  }
}

class ResultScreen extends StatelessWidget {
  final int score;
  final int total;

  const ResultScreen({Key? key, required this.score, required this.total})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Test Result")),
      body: Center(
          child: Column(
        children: [
          // Image.asset(
          //   "/assets/images/splash/nenemi-logo.png",
          //   width: 450,
          //   height: 200,
          // ),
          Text(
            "Congratulation! Your puntuaction are:  $score/$total",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ],
      )),
    );
  }
}
