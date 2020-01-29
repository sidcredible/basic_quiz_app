import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './question.dart';

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
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite color ?',
      'What\'s your favourite animal ?',
      'What\'s your college name ?'
    ];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text(
          'Quiz App',
        ),
      ),
      body: Column(
        children: <Widget>[
          Question(
            questions[_questionIndex],
          ),
          RaisedButton(
            child: Text('Answer 2'),
            onPressed: _answerQuestion,
          ),
          RaisedButton(
            child: Text('Answer 3'),
            onPressed: () => print('Answer 2 Chosen'),
          ),
          RaisedButton(
            child: Text('Answer 4'),
            onPressed: () {
              //kuch aur bhi
              print('Answer 4 Chosen');
            },
          )
        ],
      ),
    ));
  }
}
