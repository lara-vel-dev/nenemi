import 'package:flutter/material.dart';
import 'package:nenemi/pages/FinishTourScreen/finish_tour.dart';

class TourScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tour Screen Expirience")),
      body: Center(
        child: Text("AR IS COOL"),
      ),
      floatingActionButton: FloatingActionButton(
        // onPressed: _incrementCounter,
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => FinishTour()),
          );
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
