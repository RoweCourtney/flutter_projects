import "package:flutter/material.dart";
import 'package:quiz_app/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Question Text...",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          AnswerButton(answerText: "Answer 1", onClick: () {}),
          AnswerButton(answerText: "Answer 2", onClick: () {}),
          AnswerButton(answerText: "Answer 3", onClick: () {}),
        ],
      ),
    );
  }
}
