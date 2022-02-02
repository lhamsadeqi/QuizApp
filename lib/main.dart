// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, unused_local_variable, must_be_immutable, avoid_print, prefer_final_fields

import 'package:flutter/material.dart';

import './widget/quiz.dart';
import './widget/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questions = [
    {
      'Q': 'Who is your favorite singre?',
      'A': [
        {
          'text': 'Taylor Swift',
          'score': 3,
        },
        {
          'text': 'Cavetown',
          'score': 1,
        },
        {
          'text': 'Lord Huron',
          'score': 2,
        },
        {
          'text': 'Alex Turner',
          'score': 4,
        },
        {
          'text': 'none.',
          'score': 5,
        },
      ],
    },
    {
      'Q': 'What kind of music do you listen to?',
      'A': [
        {
          'text': 'Pop',
          'score': 5,
        },
        {
          'text': 'Alternative',
          'score': 3,
        },
        {
          'text': 'Jazz',
          'score': 1,
        },
        {
          'text': 'Indie',
          'score': 2,
        },
        {
          'text': 'Rock',
          'score': 4,
        },
      ],
    },
    {
      'Q': 'Choose a band.',
      'A': [
        {
          'text': 'Archive',
          'score': 4,
        },
        {
          'text': 'The Strokes',
          'score': 2,
        },
        {
          'text': 'The Beatles',
          'score': 3,
        },
        {
          'text': 'Arctic Monkeys',
          'score': 1,
        },
        {
          'text': 'none.',
          'score': 5,
        },
      ],
    },
    {
      'Q': 'Your Favorite song by Taylor Swift?',
      'A': [
        {
          'text': 'Seven',
          'score': 2,
        },
        {
          'text': 'All Too Well',
          'score': 4,
        },
        {
          'text': 'Sad Beautiful Tragic',
          'score': 1,
        },
        {
          'text': 'Champagne Problems',
          'score': 3,
        },
        {
          'text': 'I donno these songs :( ',
          'score': 5,
        },
      ],
    },
    {
      'Q': 'Which one is your guilty pleasure?',
      'A': [
        {
          'text': 'Kpop',
          'score': 1,
        },
        {
          'text': 'Justin Bieber',
          'score': 3,
        },
        {
          'text': 'Persian Pop',
          'score': 4,
        },
        {
          'text': 'One Direction',
          'score': 2,
        },
        {
          'text': 'I listen to them normally.',
          'score': 5,
        },
      ],
    },
  ];

//...
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions');
    } else {
      print('No more');
    }
  }

  @override
  Widget build(BuildContext context) {
    //...
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          centerTitle: true,
          title: Text('Vibe Check'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion,
              )
            : Result(
                resultScore: _totalScore,
                reset: _resetQuiz,
              ),
      ),
    );
  }
}
