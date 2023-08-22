import "package:flutter/material.dart";
import 'package:quiz_app/answer_button.dart';
import "package:quiz_app/data/questions.dart";
import "package:google_fonts/google_fonts.dart";

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({
    super.key,
    required this.onAnswerSelection,
  });

  final void Function(String answer) onAnswerSelection;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String chosenAnswers) {
    widget.onAnswerSelection(chosenAnswers);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.montserrat(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            ...currentQuestion.shuffleAnswers().map(
              (answer) {
                return AnswerButton(
                  answerText: answer,
                  onClick: () {
                    answerQuestion(answer);
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
