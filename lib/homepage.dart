import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: HomePage(),
    title: 'Home Page',
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        title: const Text('Login Page'),
        centerTitle: true,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.grey[900],
        child: Container(
          height: 400,
          width: 400,
          padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
          // color: Colors.blue,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Email',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.amber),
              ),
              const SizedBox(height: 10),
              Container(
                width: 350,
                child: Material(
                  elevation: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Color:Colors.orange,
                      const Icon(Icons.email),
                      Container(
                        width: 300,
                        child: const TextField(
                            // style: TextStyle(),
                            decoration: InputDecoration(
                          hintText: 'Enter Your Email',
                          fillColor: Colors.grey,
                          filled: true,
                        )),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Text('Password',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.amber,
                  )),
              const SizedBox(height: 10),
              Container(
                width: 350,
                child: Material(
                  elevation: 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(Icons.password),
                      Container(
                        width: 300,
                        child: const TextField(
                            obscureText: true,
                            enableSuggestions: false,
                            autocorrect: false,
                            decoration: InputDecoration(
                              hintText: 'Enter Your Password',
                              fillColor: Colors.grey,
                              filled: true,
                            )),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(130, 30, 0, 0),
                child: ElevatedButton(
                  onPressed: null,
                  style: ElevatedButton.styleFrom(primary: Colors.red),
                  child: Text('Login'),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
