// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String txt;
  final Function answer;

  const AnswerButton({
    required this.txt,
    required this.answer,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: answer as void Function(),
      child: Container(
        margin: EdgeInsets.fromLTRB(25, 0, 25, 15),
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            txt,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
