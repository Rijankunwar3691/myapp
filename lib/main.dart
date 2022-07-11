import 'package:flutter/material.dart';
import './answer.dart';
import './Questions.dart';
import './result.dart';

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
      'answer': [
        {'text': 'Tiger', 'score': 5},
        {'text': 'Cat', 'score': 4},
        {'text': 'Dog', 'score': 3},
        {'text': 'Lion', 'score': 2},
      ]
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
  var questionsindex = 0;
  var totalscore = 0;

  void answerSelected(int score) {
    totalscore += score;
    setState(() {
      questionsindex++;
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
            child: questionsindex < questions.length
                ? Column(
                    children: [
                      Question(
                          questions[questionsindex]['questiontext'] as String),
                      ...(questions[questionsindex]['answer']
                              as List<Map<String, Object>>)
                          .map((answer) {
                        return Answer(
                            () => answerSelected(answer['score'] as int),
                            answer['text'] as String);
                      }).toList(),
                    ],
                  )
                : Result(totalscore),
          ),
        ));
  }
}
