import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyAPP());
}

class MyAPP extends StatefulWidget {
  @override
  State<MyAPP> createState() {
    return _MyAPPState();
  }
}

class _MyAPPState extends State<MyAPP> {
  int _questionIndex = 0;
  int _totalScore = 0;

  void _resertQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  final _questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 5},
        {'text': 'Red', 'score': 3},
        {'text': 'Green', 'score': 2},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Cat', 'score': 5},
        {'text': 'Dog', 'score': 3},
        {'text': 'Rabbit', 'score': 2},
        {'text': 'Lion', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite sport?',
      'answers': [
        {'text': 'Foot', 'score': 5},
        {'text': 'Rugby', 'score': 3},
        {'text': 'Boxe', 'score': 2},
        {'text': 'Course', 'score': 1},
      ],
    },
  ];

  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Pro\'Quiz '),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion)
            : Result(_totalScore, _resertQuiz),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
