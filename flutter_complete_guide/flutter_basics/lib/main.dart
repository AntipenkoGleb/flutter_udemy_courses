import 'package:flutter/material.dart';

import './question.dart';

void main() {
  runApp(QuizApp());
}

class QuizApp extends StatefulWidget {
  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Quiz App')),
        body: Column(
          children: [
            Question('Question'),
          ],
        ),
      ),
    );
  }
}
