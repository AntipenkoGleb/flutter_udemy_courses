import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _totalScore;
  final Function _resetHandler;

  const Result(this._totalScore, this._resetHandler);

  String get _resultPhrase {
    String phrase;
    if (_totalScore <= 8) {
      phrase = 'Nice';
    } else if (_totalScore <= 12) {
      phrase = 'Ok';
    } else if (_totalScore <= 16) {
      phrase = 'Bad';
    } else {
      phrase = 'Too bad!';
    }
    return phrase;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Text(
            _resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          FlatButton(
            child: Text(
              'reset Quiz',
              style: TextStyle(color: Colors.purple, fontSize: 18),
            ),
            onPressed: _resetHandler,
          ),
        ],
      ),
    );
  }
}
