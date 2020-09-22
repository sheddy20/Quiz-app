import 'package:flutter/material.dart';
import 'package:quiz/Home.dart';
import 'package:quiz/Quiz.dart';
import 'package:quiz/answer.dart';
import 'package:quiz/question.dart';

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
      'what\'s your last name',
      'who is paul graham',
      'who is aliko dangote',
      'who is jessica liviston',
      'who is micheal seibel',
      'who is drew houston',
      'who is arash ferdowsi',
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent[400],
        title: Text('Quizzer'),
        actions: [
          IconButton(
            onPressed: _answerQuestion,
            icon: Icon(Icons.school),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Question(
            _questions[_questionsIndex],
          ),
          Answer(),
          Answer(),
          Answer(),
          SizedBox(height: 70.0),
          Home(),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0.0),
          children: [
            UserAccountsDrawerHeader(
              accountEmail: Text('Abelshedrack@gmail.com'),
              accountName: Text('Abel shedrack Nicholas'),
              currentAccountPicture: CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.white,
              ),
              decoration: BoxDecoration(
                color: Colors.deepPurpleAccent[400],
                borderRadius: BorderRadius.circular(19.0),
              ),
            ),
            ListTile(
              leading: Card(
                child: FlutterLogo(),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              onTap: () {},
              title: Text('My Flutter Quiz'),
              trailing: Icon(Icons.school),
              subtitle: Text('Quizzer'),
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              leading: Card(
                child: FlutterLogo(),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              onTap: () {},
              title: Text('My Flutter Quiz'),
              trailing: Icon(Icons.school),
              subtitle: Text('Quizzer'),
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              leading: Card(
                child: FlutterLogo(),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              onTap: () {},
              title: Text('My Flutter Quiz'),
              trailing: Icon(Icons.school),
              subtitle: Text('Quizzer'),
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              leading: Card(
                child: FlutterLogo(),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              onTap: () {},
              title: Text('My Flutter Quiz'),
              trailing: Icon(Icons.school),
              subtitle: Text('Quizzer'),
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              leading: Card(
                child: FlutterLogo(),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              onTap: () {},
              title: Text('My Flutter Quiz'),
              trailing: Icon(Icons.school),
              subtitle: Text('Quizzer'),
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              leading: Card(
                child: FlutterLogo(),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              onTap: () {},
              title: Text('My Flutter Quiz'),
              trailing: Icon(Icons.school),
              subtitle: Text('Quizzer'),
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              leading: Card(
                child: FlutterLogo(),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              onTap: () {},
              title: Text('My Flutter Quiz'),
              trailing: Icon(Icons.school),
              subtitle: Text('Quizzer'),
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              leading: Card(
                child: FlutterLogo(),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              onTap: () {},
              title: Text('My Flutter Quiz'),
              trailing: Icon(Icons.school),
              subtitle: Text('Quizzer'),
            ),
          ],
        ),
      ),
    );
  }
}
