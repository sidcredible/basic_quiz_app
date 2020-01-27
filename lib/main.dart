import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//void main() {
//  runApp(MyApp());
//}
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
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
          Text(
            questions[questionIndex],
          ),
          RaisedButton(
            child: Text('Answer 1'),
            onPressed: answerQuestion,
          ),
          RaisedButton(
            child: Text('Answer 2'),
            onPressed: answerQuestion,
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
