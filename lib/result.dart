import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalscore;
  final VoidCallback resethandler;
  Result(this.totalscore, this.resethandler);
  String get resultphrase {
    String resulttext;
    if (totalscore <= 10) {
      resulttext = 'You are innocent and awsome';
    } else if (totalscore <= 14) {
      resulttext = 'Good choice';
    } else if (totalscore <= 16) {
      resulttext = 'Not bad';
    } else {
      resulttext = 'Bad choice';
    }
    return resulttext;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultphrase,
            style: const TextStyle(
                fontWeight: FontWeight.bold, fontSize: 30, color: Colors.amber),
          ),
          ElevatedButton(onPressed: resethandler, child: Text('Play Again'))
        ],
      ),
    );
  }
}
