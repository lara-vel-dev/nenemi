import 'package:flutter/material.dart';
import 'dart:math';

class RandomGift extends StatelessWidget {
  randomGiftGenerator() {
    // Random Gift
    List<String> gifts = [
      "20% off in any gift shop",
      "Free meal",
      "50% off in your first purchase"
    ];
    var randomIndex = Random().nextInt(gifts.length - 1);
    return gifts[randomIndex];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 236, 175, 146),
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 236, 175, 146),
          title: Text("Random Gift Generator")),
      body: Center(
        child: Text(randomGiftGenerator()),
      ),
    );
  }
}
