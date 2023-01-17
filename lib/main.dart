import 'package:flutter/material.dart';
import 'package:lesser_app/questions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }
  var questions  = [
    'What\'s your name?',
    'What\'s your age?',
    'What\'s your favorite color?',
  ];

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    // creating lists of widgets

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              // ignore: prefer_const_constructors
              title: Text('New Year App'),
            ),
            body: Column(
              children: [
                Question(
                  questions[questionIndex]
                ),
                ElevatedButton(
                  onPressed: () => answerQuestion(),
                  // ignore: prefer_const_constructors
                  child: Text('Answer 1'),
                ),
                 ElevatedButton(
                  onPressed: () => print('Answer Million 2'),
                  // ignore: prefer_const_constructors
                  child: Text('Answer 2'),
                ),
              ],// ignore: prefer_const_constructors
            ),
            )
            );
  }
}
