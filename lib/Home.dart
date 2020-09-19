import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _celebrityList = 0;

  void _celebrityFunctions() {
    setState(() {
      _celebrityList++;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> _celebrity = [
      'Drake',
      'Kendric lamar',
      'taylor swift',
      'gwen stefani',
      'ariana grande',
      'jennifer aniston',
      'julia roberts',
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Center(
        child: Column(
          children: [
            Text('Celebrities'),
            Container(
              child: Column(
                children: [
                  Text(
                    _celebrity[_celebrityList],
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  MaterialButton(
                    onPressed: _celebrityFunctions,
                    color: Colors.white,
                    textColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.deepPurpleAccent,
              ),
              padding: EdgeInsets.all(20.0),
              margin: EdgeInsets.all(20.0),
              width: 100.0,
              height: 300.0,
            ),
          ],
        ),
      ),
    );
  }
}
