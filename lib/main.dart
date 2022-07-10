import 'package:flutter/material.dart';
import './answer.dart';
import './Questions.dart';

void main() {
  runApp(const MaterialApp(home: QuizzApp()));
}

class QuizzApp extends StatefulWidget {
  const QuizzApp({Key? key}) : super(key: key);

  @override
  State<QuizzApp> createState() => _QuizzAppState();
}

class _QuizzAppState extends State<QuizzApp> {
  var questions = [
    {
      'questiontext': 'What is your favourite animal ?',
      'answer': ['Tiger', 'Cat', 'Dog', 'Lion']
    },
    {
      'questiontext': 'what is your favourite colour ?',
      'answer': ['Red', 'Black', 'White', 'Blue']
    },
    {
      'questiontext': 'What is your favourite sport ?',
      'answer': ['Football', 'Cricket', 'Golf', 'Hockey']
    },
    {
      'questiontext': 'What is your hobby ?',
      'answer': ['Swimming', 'Singing', 'Dancing', 'Acting']
    },
  ];
  var Questionsindex = 0;
  void AnswerSelected() {
    setState(() {
      Questionsindex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Quizz App'),
          centerTitle: true,
        ),
        body: Container(
          color: Colors.grey,
          child: Center(
            child: Column(
              children: [
                Question(questions[Questionsindex]['questiontext'] as String),
                Answer(AnswerSelected),
                Answer(AnswerSelected),
                Answer(AnswerSelected),
              ],
            ),
          ),
        ));
  }
}
