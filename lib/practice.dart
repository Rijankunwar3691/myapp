import 'package:flutter/material.dart';

void main() {
  runApp(const PracticeWork());
}

class PracticeWork extends StatefulWidget {
  const PracticeWork({Key? key}) : super(key: key);

  @override
  State<PracticeWork> createState() => _PracticeWorkState();
}

class _PracticeWorkState extends State<PracticeWork> {
  String text = 'hello world';
  void changeText() {
    setState(() {
      if (text.startsWith('h')) {
        text = 'button is pressed';
      } else {
        text = 'hello world';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
              title: const Center(
            child: Text('PROFILE APP'),
          )),
          body: Center(
            child: Column(children: [
              Text(text),
              FloatingActionButton(
                onPressed: changeText,
                child: const Icon(Icons.add),
              )
            ]),
          ),
        ));
  }
}
