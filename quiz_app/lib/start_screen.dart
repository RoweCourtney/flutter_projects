import "package:flutter/material.dart";
import "package:quiz_app/styled_text.dart";

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/quiz-logo.png",
          width: 300,
        ),
        const SizedBox(
          height: 60,
        ),
        const StyledText("Learn Flutter The Fun Way!"),
        const SizedBox(
          height: 30,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 157, 3, 88),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 18,
            ),
          ),
          onPressed: () {},
          child: const Text("Start Quiz"),
        ),
      ],
    );
  }
}
