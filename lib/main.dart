import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//void main() {
//  runApp(MyApp());
//}
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerQuestion(){
    print('Answer chosen');
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
          body: Column(
            children: <Widget>[
              Text('The question'),
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
                onPressed: answerQuestion,
              ),
              RaisedButton(
                child: Text('Answer 4'),
                onPressed: answerQuestion,
              )
            ],
          ),
        ));
  }
}
