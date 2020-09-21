import 'package:flutter/material.dart';
import 'package:quiz/Home.dart';

class Dash extends StatefulWidget {
  @override
  _DashState createState() => _DashState();
}

class _DashState extends State<Dash> {
  int _state = 0;

  void _changeState() {
    setState(() {
      _state++;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> _solarSystems = [
      'Andromeda galaxy',
      'Alpha Centauri',
      'Promixa B',
      'Milky Way',
      'Mercury',
      'Venus',
      'Earth',
      'Mars',
      'Jupiter',
      'Saturn',
      'Uranus',
      'Neptune',
      'Pluto',
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Hipster'),
        backgroundColor: Colors.deepPurpleAccent,
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Home(_solarSystems[_state]),
            RaisedButton(
              onPressed: _changeState,
              color: Colors.black,
              textColor: Colors.white,
              child: Text('Start Quiz'),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
