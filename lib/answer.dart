import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selector;
  final String answer;

  Answer(this.selector, this.answer);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: ElevatedButton(onPressed: selector, child: Text(answer)));
  }
}
