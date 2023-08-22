import "package:flutter/material.dart";
import "package:quiz_app/questions_screen.dart";
import "package:quiz_app/start_screen.dart";

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = "start-screen";

  void switchScreen() {
    setState(() {
      activeScreen = "questions-screen";
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 57, 4, 81),
                Color.fromARGB(255, 140, 4, 182),
                Color.fromARGB(255, 120, 3, 124),
              ],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
            ),
          ),
          child: activeScreen == "start-screen"
              ? StartScreen(switchScreen)
              : const QuestionsScreen(),
        ),
      ),
    );
  }
}
