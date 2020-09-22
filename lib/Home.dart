import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FloatingActionButton.extended(
        onPressed: () {},
        icon: Icon(Icons.school),
        backgroundColor: Colors.teal[250],
        label: Text('My Quiz App'),
      ),
    );
  }
}
