import 'package:flutter/material.dart';

class Dash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('iLLUMINATI App'),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 250.0,
                height: 350.0,
                padding: EdgeInsets.all(5.0),
                margin: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  color: Colors.deepPurpleAccent,
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
