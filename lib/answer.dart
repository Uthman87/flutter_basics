// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  const Answer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(
        vertical: 0.0,
        horizontal: 15.0,
      ),
      child: const ElevatedButton(
        onPressed: null,
        child: Text('Answer 1'),
      ),
    );
  }
}
