import 'package:flutter/material.dart';

class Question extends StatelessWidget {
//Widget created for question for styling and seperation of files

  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(// Container = Margin(Border(Padding(child)))
      //container takes full width of the phone due to width
      width: double.infinity,
      margin: EdgeInsets.all(10),
      //margin gives some space around all of the title
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
        //Text is only centered with as much space as you give it
      ),
    );
  }
}
