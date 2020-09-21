import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final String displayText;
  Home(this.displayText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10.0),
      child: Text(
        displayText,
        style: TextStyle(
          color: Colors.black,
          fontSize: 28.0,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
