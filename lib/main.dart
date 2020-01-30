import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

//void main() {
//  runApp(MyApp());
//}
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
      'questionText': 'Who\'s is captain of Indian Cricket Team ?',
      'answers': [
        {'text': 'MS Dhoni', 'score': 0},
        {'text': 'Virat Kohli', 'score': 10},
        {'text': 'Rohit Sharma', 'score': 0},
        {'text': 'KL Rahul', 'score': 0},
      ],
    },
    {
      'questionText': 'Who is the God of DRS ?',
      'answers': [
        {'text': 'Rohit Sharma', 'score': 0},
        {'text': 'KL Rahul', 'score': 0},
        {'text': 'Virat Kohli', 'score': 0},
        {'text': 'MS Dhoni', 'score': 10},
      ],
    },
    {
      'questionText':
          'Which commentator calls Rohit Sharma as Ro-HITMAN Sharma ?',
      'answers': [
        {'text': 'Harsha Bhogle', 'score': 0},
        {'text': 'Jatin Sapru', 'score': 0},
        {'text': 'Aakash Chopra', 'score': 10},
        {'text': 'Sanjay Manjarekar', 'score': 0},
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
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text(
          'Quiz App',
        ),
      ),
      body: _questionIndex < _questions.length
          ? Quiz(
              answerQuestion: _answerQuestion,
              questionIndex: _questionIndex,
              questions: _questions,
            )
          : Result(_totalScore, _resetQuiz),
    ));
  }
}
