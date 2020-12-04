import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';
import './result.dart';

void main() {
  runApp(QuizApp());
}

class QuizApp extends StatefulWidget {
  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  final _questions = const [
    {
      'question': 'What\'s your favorite color?',
      'answers': [
        {'answer': 'Black', 'score': 10},
        {'answer': 'White', 'score': 1},
        {'answer': 'Blue', 'score': 4},
        {'answer': 'Red', 'score': 6},
      ],
    },
    {
      'question': 'What\'s your favorite animal?',
      'answers': [
        {'answer': 'Rabbit', 'score': 10},
        {'answer': 'Snake', 'score': 1},
        {'answer': 'Lion', 'score': 4},
        {'answer': 'Cat', 'score': 6},
      ],
    },
    {
      'question': 'What\'s your favorite color?',
      'answers': [
        {'answer': 'Black', 'score': 10},
        {'answer': 'White', 'score': 1},
        {'answer': 'Blue', 'score': 4},
        {'answer': 'Red', 'score': 6},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  _onAnswerSelected(int score) {
    setState(() {
      _questionIndex++;
      _totalScore += score;
    });
  }

  _onReset() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Quiz App')),
        body: _questionIndex < _questions.length
            ? Column(
                children: [
                  Question(_questions[_questionIndex]['question']),
                  ...(_questions[_questionIndex]['answers']
                          as List<Map<String, Object>>)
                      .map((answer) => Answer(answer['answer'],
                          () => _onAnswerSelected(answer['score'])))
                      .toList(),
                ],
              )
            : Result(_totalScore, _onReset),
      ),
    );
  }
}
