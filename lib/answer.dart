import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selector;

  Answer(this.selector);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: selector, child: const Text('Answer 1'));
  }
}
