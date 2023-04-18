import 'package:flutter/material.dart';
import './quiz.dart';
import 'result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  final _questions = const [
    {
      'questionText': 'What\'s Your Favorite Color?',
      'answer': [
        {'text': 'Black', 'score': 10},
        {'text': 'Blue', 'score': 20},
        {'text': 'Red', 'score': 30},
        {'text': 'Pink', 'score': 40},
      ]
    },
    {
      'questionText': 'What\'s Your Favorite Animal?',
      'answer': [
        {'text': 'Snakes', 'score': 10},
        {'text': 'Rabbits', 'score': 20},
        {'text': 'Dogs', 'score': 30},
        {'text': 'Cats', 'score': 40},
      ]
    },
    {
      'questionText': 'What\'s Your Favorite City?',
      'answer': [
        {'text': 'Cairo', 'score': 10},
        {'text': 'Milano', 'score': 20},
        {'text': 'London', 'score': 30},
        {'text': 'New York', 'score': 40},
      ]
    },
    {
      'questionText': 'What\'s Your Favorite Season?',
      'answer': [
        {'text': 'Summer', 'score': 10},
        {'text': 'Spring', 'score': 20},
        {'text': 'Fall', 'score': 30},
        {'text': 'Winter', 'score': 40},
      ]
    }
  ];

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext ctx) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              'My First App',
            ),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questions: _questions,
                  questionIndex: _questionIndex)
              : Result(_totalScore, _resetQuiz)),
    );
  }
}
