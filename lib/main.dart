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

  final _questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Cat', 'Dog', 'Rabbit', 'Lion'],
    },
    {
      'questionText': 'What\'s your favorite sport?',
      'answers': ['Foot', 'Rugby', 'Boxe', 'Course'],
    },
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello World'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion)
            : Result('You did it !'),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
