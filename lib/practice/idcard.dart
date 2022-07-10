import 'package:flutter/material.dart';

void main() {
  runApp(const IdCard());
}

class IdCard extends StatelessWidget {
  const IdCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ID CARD'),
          centerTitle: true,
          backgroundColor: Colors.grey[850],
          elevation: 0.0,
        ),
        backgroundColor: Colors.grey[900],
        body: Padding(
          padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/rijan.jpg'),
                  radius: 50.0,
                ),
              ),
              const Divider(
                color: Color.fromARGB(255, 244, 238, 238),
                height: 60.0,
              ),
              const Text(
                "Name",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    letterSpacing: 1.0),
              ),
              const SizedBox(height: 10.0),
              const Text(
                "Rijan Kunwar",
                style: TextStyle(
                    color: Colors.amber,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              const SizedBox(height: 10.0),
              const Text(
                "ROLL NO.",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    letterSpacing: 1.0),
              ),
              const SizedBox(height: 10.0),
              const Text(
                "181231",
                style: TextStyle(
                    color: Colors.amber,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              const SizedBox(height: 10.0),
              Row(
                children: const [
                  Icon(
                    Icons.email,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    "rijan.kunwar3691@gmail.com",
                    style: TextStyle(color: Colors.grey, letterSpacing: 1.0),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
