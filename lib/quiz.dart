import 'package:flutter/material.dart';
import 'package:quizzer/data/questions.dart';
import 'package:quizzer/home_screen.dart';
import 'package:quizzer/question_screen.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  // Widget? activeScreen;
  // OR //


  // @override
  // void initState() {
  //   activeScreen = HomeScreen(switchScreen);
  //   super.initState();
  // }

  // void switchScreen(){
  //   setState(() {
  //     activeScreen = const QuestionsScreen();
  //   });
  // }
     List<String> selectedAnswer = [];
  var activeScreen = 'home-screen';

  void switchScreen(){
    setState(() {
      activeScreen = 'questions-screen';
    });
  }
  void chooseAnswer(String answer){
    selectedAnswer.add(answer);
    if(selectedAnswer.length == questions.length){
      setState(() {
        selectedAnswer = [];
        activeScreen ='result-screen';
      });
    }
 
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: activeScreen == 'home-screen' ? HomeScreen(switchScreen) : QuestionsScreen(
        onSelectAnswer: chooseAnswer,
      ),
    );
  }
}