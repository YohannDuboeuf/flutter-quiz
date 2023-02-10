import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resertQuiz;

  Result(this.resultScore, this.resertQuiz) {}

  String get resusltPhrase {
    var resultText = 'You did it';

    if (resultScore >= 8) {
      resultText = 'You have a great score !';
    } else if (resultScore >= 10) {
      resultText = "Really good score !!";
    } else {
      resultText = "You are bad ...";
    }

    print(resultScore);

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          '${resusltPhrase} ${resultScore}',
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        ElevatedButton(
          onPressed: resertQuiz,
          child: Text('Restart Quizz'),
        )
      ],
    ));
  }
}
