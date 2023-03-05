// ignore_for_file: avoid_print, no_logic_in_create_state

import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your name?',
      'Which school do you attend?',
      'What\'s your favorite food?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: const Text(
            'My First App',
            textAlign: TextAlign.center,
          ),
          titleTextStyle: const TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontFamily: 'Times New Roman',
            fontWeight: FontWeight.bold,
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Question(
                questions[_questionIndex],
              ),
              const SizedBox(
                height: 60.0,
              ),
              Answer(),
              Answer(),
              Answer(),
            ],
          ),
        ),
      ),
    );
  }
}
