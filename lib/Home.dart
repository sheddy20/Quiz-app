import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final Function select;
  Home(this.select);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FloatingActionButton.extended(
        onPressed: select,
        icon: Icon(Icons.school),
        backgroundColor: Colors.pinkAccent[200],
        label: Text('My Quiz App'),
      ),
    );
  }
}
