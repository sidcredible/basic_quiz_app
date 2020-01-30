import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore == 30) {
      resultText = 'You answered all the questions correctly. ';
    } else if (resultScore == 20) {
      resultText = 'You incorrectly answered just one question';
    } else if (resultScore == 10) {
      resultText = 'You answered just one question correctly';
    } else if (resultScore == 0) {
      resultText = 'So bad, Try again';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          child: Text('Restart Quiz'),
          textColor: Colors.blue,
          onPressed: resetHandler,
        )
      ],
    ));
  }
}
