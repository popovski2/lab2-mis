import 'package:flutter/material.dart';

class Answer extends StatelessWidget{

  VoidCallback tapped;
  String answerText;
  Answer(this.tapped, this.answerText);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(answerText,
        style: const TextStyle(
          fontSize: 20,
          color: Colors.blue,
        ),),
      onPressed: tapped,
      style: ElevatedButton.styleFrom(
        primary: Colors.grey,
      ),
    );
  }
}