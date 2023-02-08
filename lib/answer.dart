import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String textBtn;

  Answer(this.textBtn, this.selectHandler) {}

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(textBtn),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.amber[700]),
            foregroundColor: MaterialStateProperty.all(Colors.black)),
        onPressed: selectHandler,
      ),
    );
  }
}
