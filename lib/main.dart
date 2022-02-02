// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, unused_local_variable, must_be_immutable, avoid_print

import 'package:flutter/material.dart';
import 'package:quiz/Btn/answer_button.dart';
import 'package:quiz/widget/question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'Q': 'Who is your favorite singre?',
        'A': [
          'Taylor Swift',
          'Cavetown',
          'Lord Huron',
          'Alex Turner',
          'none.',
        ],
      },
      {
        'Q': 'What kind of music do you listen to?',
        'A': [
          'Pop',
          'Alternative',
          'Jazz',
          'Indie',
          'Rock',
        ],
      },
      {
        'Q': 'Choose a band.',
        'A': [
          'Archive',
          'The Strokes',
          'The Beatles',
          'Arctic Monkeys',
          'none.',
        ],
      },
      {
        'Q': 'Your Favorite song by Taylor Swift?',
        'A': [
          'Seven',
          'All Too Well',
          'Sad Beautiful Tragic',
          'Champagne Problems',
          'I donno these songs :( ',
        ],
      },
      {
        'Q': 'Which one is your guilty pleasure?',
        'A': [
          'Kpop',
          'Justin Bieber',
          'Persian Pop',
          'One Direction',
          'I listen to them normally.',
        ],
      },
    ];

    //...
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
            Qusetion(
              questions[_questionIndex]['Q'].toString(),
            ),
            SizedBox(height: 25),
            ...(questions[_questionIndex]['A'] as List).map((answer) {
              return AnswerButton(
                txt: answer,
                answer: _answerQuestion,
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
