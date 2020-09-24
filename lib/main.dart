import 'package:flutter/material.dart';
import 'package:quiz/answer.dart';
import 'package:quiz/question.dart';
import 'package:quiz/word.dart';

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
      if (_questionsIndex > 8) {
        _questionsIndex++;
        return Text('Sorry');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> questions = [
      {
        'questionText': 'What\s Your Country Name',
        'answer': ['Nigeria', 'United State', 'United Kingdom', 'UAE', 'Sweden']
      },
      {
        'questionText': 'What\s Your Favourite Car',
        'answer': ['Bugatti', 'Lamborghini', 'Ferrari', 'Tesla', 'Lucid Air']
      },
      {
        'questionText': 'Who Betray Jesus Christ',
        'answer': ['Shalom', 'Obassi', 'JUDAS', 'Jefferson', 'Honour']
      },
      {
        'questionText': 'Who Create The World Wide Web[WWW]',
        'answer': ['Tim Bener Lee', 'Larry Page', 'Mark Zuckerberg', 'Shedrack']
      },
      {
        'questionText': 'What\s The Capital Of Sweden',
        'answer': ['Abuja', 'Copahagen', 'Stockholm', 'Oslo', 'Beijing']
      },
      {
        'questionText': 'Who Is Lashmi Mittal',
        'answer': ['A Billionaire', 'A Hacker', 'Cook', 'Doctor', 'Criminal']
      },
      {
        'questionText': 'Which Of This Country Speak Mandarin',
        'answer': ['China', 'Japan', 'South Korea', 'Rwanda', 'Barbardos']
      },
      {
        'questionText': 'What\s The Alter Ego Of Superman',
        'answer': ['Clark Kent', 'David', 'Shalom', 'Jefferson', 'Honour']
      },
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent[400],
        title: Text('Quizzer'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.school),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Question(
            questions[_questionsIndex]['questionText'],
          ),
          ...(questions[_questionsIndex]['answer'] as List<String>)
              .map((answer) {
            return Answer(_answerQuestion, answer);
          }).toList(),
          SizedBox(height: 20.0),
          Word(),
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
                backgroundImage: AssetImage('Assets/Images/shedrack.jpg'),
              ),
              decoration: BoxDecoration(
                color: Colors.deepPurpleAccent[400],
                borderRadius: BorderRadius.circular(11.0),
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
          ],
        ),
      ),
    );
  }
}
