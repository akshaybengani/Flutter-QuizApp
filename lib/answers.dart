import 'package:flutter/material.dart';
  
class Answers extends StatelessWidget {
  final Function selectHandler; // This will hold the pointer
  final String answerText;

  Answers(this.selectHandler,this.answerText); // Answers Constructor holding a Function as a parameter
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue, // Right now you can only add predefined colors in the lib
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
