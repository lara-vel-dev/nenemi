import 'package:flutter/material.dart';
import 'color.dart';

final ButtonStyle buttonPrimary = ElevatedButton.styleFrom(
  minimumSize: Size(340, 80),
  backgroundColor: green,
  foregroundColor: Colors.white,
  // maximumSize: Size(300, 80)
);

final ButtonStyle smallButtonStyle = ElevatedButton.styleFrom(
  textStyle: TextStyle(fontSize: 25),
  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4), // Less padding
  minimumSize: Size(90, 50),
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
  side: BorderSide(color: Colors.green, width: 1),
  foregroundColor: Colors.black,
);

final ButtonStyle questionButtonStyle = ElevatedButton.styleFrom(
  textStyle: TextStyle(fontSize: 15), // Smaller text
  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4), // Less padding
  minimumSize: Size(90, 50), // Minimum size of the button
  shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10)), // Rounded corners
  side: BorderSide(color: Colors.green, width: 1), // Green border, thin line
  foregroundColor: Colors.black,
);
