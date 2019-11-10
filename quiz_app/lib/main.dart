import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';
// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText':
          'Everyone knows that there are two campuses. Besides being called South Campus, what is another name for it?',
      'answers': [
        {'text': 'Down there campus', 'score': 0},
        {'text': 'North Buffalo Campus', 'score': 0},
        {'text': 'Main Campus', 'score': 1},
        {'text': 'Bailey Campus', 'score': 0},
      ],
    },
    {
      'questionText':
          'In the 1990s, the main program which was on the South Campus was:',
      'answers': [
        {'text': 'Theatre', 'score': 0},
        {'text': 'School of Medicine', 'score': 1},
        {'text': 'Engineering', 'score': 0},
        {'text': 'Sociology', 'score': 0},
      ],
    },
    {
      'questionText': 'The pillars at Lake LaSalle are from where?',
      'answers': [
        {'text': 'Greece', 'score': 0},
        {'text': 'Washington, DC', 'score': 0},
        {'text': 'Always been there', 'score': 0},
        {'text': 'Old Federal Reserve', 'score': 1},
      ],
    },
    {
      'questionText': 'What is the name of the event which takes place every spring where volleyball is played in the mud?',
      'answers': [
        {'text': 'Spring Fest', 'score': 0},
        {'text': 'Mud Fest', 'score': 0},
        {'text': 'Volleybull Day', 'score': 0},
        {'text': 'Ooz Fest', 'score': 1},
      ],
    },
    {
      'questionText': 'What controversial speaker offered to waive his usual speaking fee in order to give a talk to students in 2002?',
      'answers': [
        {'text': 'Bill Clinton', 'score': 1},
        {'text': 'Marilyn Manson', 'score': 0},
        {'text': 'Jerry Springer', 'score': 0},
        {'text': 'Billy Graham', 'score': 0},
      ],
    },
    {
      'questionText':
          'When it was built, how many theatres did the Center for the Arts have?',
      'answers': [
        {'text': '1', 'score': 0},
        {'text': '6', 'score': 0},
        {'text': '16', 'score': 0},
        {'text': '4', 'score': 1},
      ],
    },
    {
      'questionText':
          'The Undergraduate Library (commonly called the UGL) is the library geared towards undergrads. What is the library most of the grad students use?',
      'answers': [
        {'text': 'Health and Sciences Library', 'score': 0},
        {'text': 'O\'Brien', 'score': 0},
        {'text': 'Lockwood', 'score': 0},
        {'text': 'Graduate Library', 'score': 1},
      ],
    },
    {
      'questionText':
          ' Ellicott Residence Halls are commonly called:',
      'answers': [
        {'text': 'Eli', 'score': 0},
        {'text': 'Dormworld', 'score': 0},
        {'text': 'Legoland', 'score': 1},
        {'text': 'The Cave', 'score': 0},
      ],
    },
    {
      'questionText':
          'Which former President was also a former President of the University?',
      'answers': [
        {'text': 'Millard Fillmore', 'score': 1},
        {'text': 'William McKinley', 'score': 0},
        {'text': 'Grover Cleveland', 'score': 0},
        {'text': 'George Bush', 'score': 0},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    // var aBool = true;
    // aBool = false;

    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    // var dummy = const ['Hello'];
    // dummy.add('Max');
    // print(dummy);
    // dummy = [];
    // questions = []; // does not work if questions is a const

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
