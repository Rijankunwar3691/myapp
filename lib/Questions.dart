import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  // ignore: use_key_in_widget_constructors
  const Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(
        questionText,
        style: const TextStyle(
            fontWeight: FontWeight.bold, fontSize: 25, color: Colors.amber),
      ),
    );
  }
}
