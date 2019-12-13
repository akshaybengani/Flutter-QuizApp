import 'package:flutter/material.dart';
import './main.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;
  Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are so bad!';
    } else if (resultScore <= 12) {
      resultText = 'You are ... Strange?!';
    } else if (resultScore <= 16) {
      resultText = "Pretty Likeable!";
    } else {
      resultText = "You are Awesome and Innocent";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase + " Your total score is " + resultScore.toString(),
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Retake Quiz!'),
            onPressed: resetQuiz,
            textColor: Colors.white,
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}
