import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../QuizScreen/quiz_screen.dart';
// import '../speks/speak.dart';
import '../styles/button.dart';

Future<void> _launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'No se pudo lanzar $url';
  }
}

class TourScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 236, 175, 146),
        appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 236, 175, 146),
            title: Text("Tour Screen Expirience")),
        body: Center(
          child: Column(children: [
            Image.asset(
              "assets/real-del-monte.png",
              width: 250,
              height: 250,
            ),
            SizedBox(height: 24), // Add this line for spacing
            // Speech(),
            ElevatedButton(
              style: buttonPrimary,
              onPressed: () =>
                  // _launchURL(
                  //     'https://www.instagram.com/ar/2173879186288909/?ch=ZDQ1OWI1ZjBlZDAzNDIwZTlhOWU3ODI2MDc1MWVhNjQ%3D'),
                  launchUrl(
                Uri.parse(
                    'https://www.instagram.com/ar/2173879186288909/?ch=ZDQ1OWI1ZjBlZDAzNDIwZTlhOWU3ODI2MDc1MWVhNjQ%3D'),
                mode: LaunchMode.externalApplication,
              ),
              child: Text(
                "Let's play!",
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(height: 24), // Add this line for spacing

            ElevatedButton(
              style: buttonPrimary,
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => QuizScreen()),
                );
              },
              child: Text(
                "Challenge yourself",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ]
              // QuizScreen
              ),
        ));
  }
}
