import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

// void main(){
//   runApp(MyApp);
// }
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {

    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final questions = const [
    {
      'questionText': 'What your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 2},
      ]
    },
    {
      'questionText': 'What your favorite Animal',
      'answers': [
        {'text': 'Rabbit', 'score': 2},
        {'text': 'Mouse', 'score': 10},
        {'text': 'Elephant', 'score': 20},
      ]
    },
    {
      'questionText': 'Who is your best friend?',
      'answers': [
        {'text': 'Shivank', 'score': 10},
        {'text': 'Aastha', 'score': 20},
        {'text': 'Mohit', 'score': 0},
        {'text': 'Naman', 'score': 5},
      ]
    },
  ];

  var _qusIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _qusIndex = 0;
      _totalScore = 0;
    });
  }

  void answerQuestion(int score) {
    if (_qusIndex < questions.length) {
      setState(() {
        _qusIndex = _qusIndex + 1;
        _totalScore = _totalScore + score;
      });
    } else {
      print("we have no more questions left");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // home: is the argument name of the scaffold constructor
        // Scaffold is a widget which is used to design a base page design like colouring or a regualar UI
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: _qusIndex < questions.length
            ? Quiz(
                answerQuestion: answerQuestion,
                questions: questions,
                quesIndex: _qusIndex,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  } // BuildContext
} //MyAppClassEnd
