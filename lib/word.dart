import 'package:flutter/material.dart';
import 'package:quiz/Home.dart';
import 'package:quiz/reset.dart';

class Word extends StatefulWidget {
  @override
  _WordState createState() => _WordState();
}

class _WordState extends State<Word> {
  int _startWord = 0;

  void _startWordFun() {
    setState(() {
      _startWord++;
    });
  }

  void _resetButton() {
    setState(() {
      _startWord--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'The Quiz Will Start In...',
          style: TextStyle(
            color: Colors.black,
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          '$_startWord',
          style: TextStyle(
            color: Colors.black,
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Seconds...',
          style: TextStyle(
            color: Colors.black,
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 20.0),
        Home(_startWordFun),
        SizedBox(height: 20.0),
        Reset(_resetButton),
      ],
    );
  }
}
