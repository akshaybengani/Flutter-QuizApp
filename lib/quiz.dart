import 'package:flutter/material.dart';
import './answers.dart';
import './questions.dart';
import './main.dart';

class Quiz extends StatelessWidget {

  final Function answerQuestion;
  final List<Map<String,Object>> questions;
  final int quesIndex;

  Quiz({this.questions, this.answerQuestion, this.quesIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Questions(questions[quesIndex]
            ['questionText']), // This is a custom Text Widget
        ...(questions[quesIndex]['answers'] as List<Map<String,Object>>).map((answer) {
          return Answers(() => answerQuestion(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
