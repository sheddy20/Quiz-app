import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz',
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
  int _questionsIndex = 0;

  void _answerQuestion() {
    print('Answer Chosen');
    setState(() {
      _questionsIndex++;
    });
  }

  final _icon = Icons.menu;
  final _icon2 = Icons.search;
  final _icon3 = Icons.more_vert;

  @override
  Widget build(BuildContext context) {
    List<String> _questions = [
      'what\'s your favourite car',
      'what\'s your name',
      'what\'s your girlfriend name',
      'who is paul graham',
      'who is aliko dangote',
      'who is jessica liviston',
      'who is micheal seibel',
      'my name is shedrack abel nicholas'
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text('Quizzer'),
        leading: IconButton(
          icon: Icon(_icon),
          onPressed: _answerQuestion,
        ),
        actions: [
          IconButton(
            icon: Icon(_icon2),
            onPressed: _answerQuestion,
          ),
          IconButton(
            icon: Icon(_icon3),
            onPressed: _answerQuestion,
          ),
        ],
      ),
      body: Column(
        children: [
          Text(
            _questions[_questionsIndex],
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.5,
            ),
          ),
          RaisedButton(
            child: Text('Answer 1'),
            onPressed: null,
            textColor: Colors.white,
            color: Colors.black,
          ),
          RaisedButton(
            child: Text('Answer 2'),
            onPressed: null,
            textColor: Colors.white,
            color: Colors.black,
          ),
          RaisedButton(
            child: Text('Answer 3'),
            onPressed: null,
            textColor: Colors.white,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
