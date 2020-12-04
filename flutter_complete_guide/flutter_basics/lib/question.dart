import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String _questionText;

  const Question(this._questionText);

  @override
  Widget build(BuildContext context) {
    return Text(
      _questionText,
      style: TextStyle(fontSize: 28),
      textAlign: TextAlign.center,
    );
  }
}
