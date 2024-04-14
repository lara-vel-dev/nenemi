import 'package:flutter/material.dart';
import 'package:nenemi/pages/RandomGiftScreen/random_gift.dart';

import '../../styles/button.dart';

class FinishTour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 236, 175, 146),
        appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 236, 175, 146),
            title: Text("Thank you for joining us")),
        body:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Text("Check your points! 150"),
          Text("Congratulations! 🥳🥳🥳"),
          ElevatedButton(
            style: buttonPrimary,
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => RandomGift()),
              );
            },
            child: Text("Exchange your points!"),
          ),
        ]));
  }
}
