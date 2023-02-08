import 'package:flutter/cupertino.dart';

class Result extends StatelessWidget {
  final String resultText;

  Result(this.resultText) {}

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('You did it'),
      ),
    );
  }
}
