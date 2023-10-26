import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 33, 0, 39),
        title: const Text('Quizzer'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 174, 28, 199),
              Color.fromARGB(255, 184, 0, 217),
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/quiz-logo.png',
                width: 300,
                color: Color.fromARGB(150, 255, 255, 255),
              ),
              ////// or ///////
              ////////////////
              // Opacity(
              //   opacity: 0.5,
              //   child: Image.asset(
              //     'assets/images/quiz-logo.png',
              //     width: 300,
              //   ),
              // ),
              const SizedBox(
                height: 30,
              ),
               Text(
                'Take Some Quiz!',
                style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 239, 237, 237),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              OutlinedButton.icon(
                onPressed: startQuiz,
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                ),
                icon: const Icon(Icons.arrow_right_alt),
                label: const Text(
                  'Start Quiz',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
