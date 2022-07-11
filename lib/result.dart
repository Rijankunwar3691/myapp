import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalscore;
  Result(this.totalscore);
  String get resultphrase {
    String resulttext;
    if (totalscore <= 5) {
      resulttext = 'You are innocent and awsome';
    } else if (totalscore <= 10) {
      resulttext = 'Good choice';
    } else if (totalscore <= 15) {
      resulttext = 'Not bad';
    } else {
      resulttext = 'Bad choice';
    }
    return resulttext;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultphrase,
        style: const TextStyle(
            fontWeight: FontWeight.bold, fontSize: 30, color: Colors.amber),
      ),
    );
  }
}
