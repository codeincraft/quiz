import 'package:flutter/material.dart';
import 'package:quizzer/home_screen.dart';
import 'package:quizzer/quiz.dart';

void main() {
  runApp(const QuizScreen());
}

class Quizzer extends StatelessWidget {
  const Quizzer({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return QuizScreen();
  }
}


