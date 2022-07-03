import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: const AtoZ(),
    title: 'flutter practice',
    theme: ThemeData(primarySwatch: Colors.cyan),
  ));
}

class AtoZ extends StatelessWidget {
  const AtoZ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('A-Z'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 50.0,
                  child: Image.asset('assets/apple.jpg'),
                ),
                Container(
                  height: 50.0,
                  child: Image.asset('assets/apple.jpg'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'A=Apple',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0,
                      fontSize: 20.0,
                      color: Colors.amber),
                ),
                Text(
                  'B=Ball',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0,
                      fontSize: 20.0,
                      color: Colors.amber),
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 50.0,
                  child: Image.asset('assets/apple.jpg'),
                ),
                Container(
                  height: 50.0,
                  child: Image.asset('assets/apple.jpg'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'C=Cat',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0,
                      fontSize: 20.0,
                      color: Colors.amber),
                ),
                Text(
                  'D=Dog',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0,
                      fontSize: 20.0,
                      color: Colors.amber),
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 50.0,
                  child: Image.asset('assets/apple.jpg'),
                ),
                Container(
                  height: 50.0,
                  child: Image.asset('assets/apple.jpg'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'E=Egg',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0,
                      fontSize: 20.0,
                      color: Colors.amber),
                ),
                Text(
                  'F=Flag',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0,
                      fontSize: 20.0,
                      color: Colors.amber),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
