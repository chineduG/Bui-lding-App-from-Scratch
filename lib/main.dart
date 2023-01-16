import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    // creating lists of widgets
    var questions = [
      "What'syour name",
      "What is your age",
      "What is your favorite color",
    ];
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('New Year App'),
            ),
            body: Column(
              children: const [
                Text('The Question'),
                ElevatedButton(
                  onPressed: null,
                  child: Text('Answer 1'),
                ),
                ElevatedButton(
                  onPressed: null,
                  child: Text('Answer 2'),
                ),
                ElevatedButton(
                  onPressed: null,
                  child: Text('Answer 3'),
                ),
              ],
            )));
  }
}
