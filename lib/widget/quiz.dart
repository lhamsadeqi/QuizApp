// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

import '../Btn/answer_button.dart';
import '../widget/question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({
    required this.questions,
    required this.questionIndex,
    required this.answerQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Qusetion(
            questions[questionIndex]['Q'].toString(),
          ),
          SizedBox(height: 25),
          ...(questions[questionIndex]['A'] as List<Map<String, Object>>)
              .map((answer) {
            return AnswerButton(
              txt: answer['text'].toString(),
              answer: () => answerQuestion(answer['score']),
            );
          }).toList(),
        ],
      ),
    );
  }
}
