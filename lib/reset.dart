import 'package:flutter/material.dart';

class Reset extends StatelessWidget {
  final Function makeCount;
  Reset(this.makeCount);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: FloatingActionButton.extended(
            onPressed: makeCount,
            icon: Icon(Icons.school),
            backgroundColor: Colors.pinkAccent[200],
            label: Text('Reset Quiz App Counter'),
          ),
        ),
      ],
    );
  }
}
