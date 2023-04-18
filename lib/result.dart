import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText;
    if (resultScore <= 40) {
      resultText = 'You Dark bro';
    } else if (resultScore <= 80) {
      resultText = 'You can do better';
    } else if (resultScore <= 120) {
      resultText = 'You getting closer';
    } else {
      resultText = 'You are Awesome, Bro!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: <Widget>[
      Text(
        resultPhrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
      TextButton(
          onPressed: resetHandler,
          child: Text('Restart Quiz!'),
          style: ButtonStyle(
              textStyle: MaterialStateProperty.all(
                  TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              foregroundColor:
                  MaterialStateProperty.all(Colors.deepPurpleAccent)))
    ]));
  }
}
