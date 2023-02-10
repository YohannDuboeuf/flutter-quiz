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
      'questionText': 'Quelle est la capital de la France ?',
      'answers': [
        {'text': 'Paris ', 'score': 1},
        {'text': 'Lyon', 'score': 0},
        {'text': 'Feurs', 'score': 0},
        {'text': 'Bordeaux ', 'score': 0},
      ],
    },
    {
      'questionText': 'Quelle est la capital du Canada ?',
      'answers': [
        {'text': 'Montréal', 'score': 0},
        {'text': 'Vancouver', 'score': 0},
        {'text': 'Ottawa', 'score': 1},
        {'text': 'Toronto', 'score': 0},
      ],
    },
    {
      'questionText': 'Quelle est la capital des États-Unis ?',
      'answers': [
        {'text': 'New York', 'score': 0},
        {'text': 'Washington', 'score': 1},
        {'text': 'Las vegas', 'score': 0},
        {'text': 'Los Angeles', 'score': 0},
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
