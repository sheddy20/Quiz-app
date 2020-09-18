import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> questions = [
    'what\'s your favourite car',
    'what\'s your name',
    'what\'s your girlfriend name',
  ];

  void _answerQuestion() {
    print('Answer Chosen');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
      ),
      body: Column(
        children: [
          Text('The Questions'),
          RaisedButton(
            child: Text('Answer 1'),
            onPressed: _answerQuestion,
            textColor: Colors.white,
            color: Colors.black,
          ),
          RaisedButton(
            child: Text('Answer 2'),
            onPressed: _answerQuestion,
            textColor: Colors.white,
            color: Colors.black,
          ),
          RaisedButton(
            child: Text('Answer 3'),
            onPressed: _answerQuestion,
            textColor: Colors.white,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
