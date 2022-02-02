// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, unused_local_variable, must_be_immutable, avoid_print

import 'package:flutter/material.dart';
import 'package:quiz/Btn/answer_button.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'Your favorite singer?',
      'Your favorite season?',
      'Your favorite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: Text('Vibe Check'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text(
              questions[questionIndex],
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 25),
            AnswerButton(
              txt: 'a',
              answer: () {
                answerQuestion();
                print('a');
              },
            ),
            AnswerButton(
              txt: 'b',
              answer: () {
                answerQuestion();
                print('b');
              },
            ),
            AnswerButton(
              txt: 'c',
              answer: () {
                answerQuestion();
                print('c');
              },
            ),
          ],
        ),
      ),
    );
  }
}
