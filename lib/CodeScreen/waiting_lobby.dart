import 'dart:async';

import 'package:flutter/material.dart';

import '../TourScreen/TourScreen.dart';

import '../styles/button.dart';

class LobbyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WaitingRoomScreen(),
    );
  }
}

class WaitingRoomScreen extends StatefulWidget {
  @override
  _WaitingRoomScreenState createState() => _WaitingRoomScreenState();
}

class _WaitingRoomScreenState extends State<WaitingRoomScreen> {
  int remainingParticipants = 3;
  Timer? timer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    timer = Timer.periodic(Duration(seconds: 3), (timer) {
      if (remainingParticipants > 0) {
        setState(() {
          remainingParticipants--;
        });
      } else {
        timer.cancel();
        navigateToNextScreen();
      }
    });
  }

  void navigateToNextScreen() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => TourScreen()),
    );
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 236, 175, 146),
      appBar: AppBar(
        title: Text("Watting Lobby!"),
        backgroundColor: Color.fromARGB(255, 236, 175, 146),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Entering to: Real del Monte \nWaiting for other participants... Meanwhile put your sealtbelt",
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 50),
          CircularProgressIndicator(),
          SizedBox(height: 20),
          Text(
            "$remainingParticipants participants remaining",
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 50),
          ElevatedButton(
            style: buttonPrimary,
            onPressed: navigateToNextScreen,
            child: Text("Skip other participants and start"),
          ),
        ],
      ),
    );
  }
}
