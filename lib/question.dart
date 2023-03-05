import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  const Question(this.questionText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Text(
        questionText,
        textAlign: TextAlign.center,
        style: const TextStyle(
            fontFamily: 'Times New Roman',
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 25.0),
      ),
    );
  }
}
