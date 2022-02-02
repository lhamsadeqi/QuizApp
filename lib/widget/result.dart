// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function reset;

  Result({
    required this.resultScore,
    required this.reset,
  });

  String get resultPhrase {
    var resultText = 'Well done buddy.';
    if (resultScore <= 5) {
      resultText = 'You are my soulmate <3';
    } else if (resultScore <= 10) {
      resultText = 'I knew you got taste *.*';
    } else if (resultScore <= 15) {
      resultText = 'At least you are tryin =))';
    } else if (resultScore <= 20) {
      resultText = 'eh, not bad! :/';
    } else {
      resultText = 'Why are we still friend? -.-';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          InkWell(
            onTap: reset as void Function(),
            child: Text(
              'restart',
              style: TextStyle(
                color: Colors.purple[700],
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
