import "package:flutter/material.dart";
import 'package:quiz_app/styles/styled_header_text.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 300,
            color: const Color.fromARGB(165, 255, 255, 255),
          ),
//______________________________________________________________________________
          const SizedBox(
            height: 60,
          ),
//______________________________________________________________________________
          const HeaderText("Learn Flutter The Fun Way!"),
//______________________________________________________________________________
          const SizedBox(
            height: 30,
          ),
//______________________________________________________________________________
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 157, 3, 88),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 18,
              ),
            ),
            onPressed: startQuiz,
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text("Start Quiz"),
          ),
        ],
      ),
    );
  }
}
