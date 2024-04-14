import 'package:flutter/material.dart';
import 'package:nenemi/pages/RandomGiftScreen/random_gift.dart';

class FinishTour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Thank you for joining us")),
        body: Column(children: [
          Text("Check your points!!\n150"),
          ElevatedButton(
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
