import "package:flutter/material.dart";

class Questions extends StatelessWidget {
  final String questionText;
  Questions(this.questionText);
  
  @override 
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // This is used to take the full Screen width
      margin: EdgeInsets.all(10), // This is used to add margin in all direction
      child: Text(
        questionText, // String variable which returns with constuctor as widget
        style: TextStyle(fontSize: 28), // Font related stuff and colouring can be done with style
        textAlign: TextAlign.center, // For alignment of the Text
      ),
    );
  }
}
