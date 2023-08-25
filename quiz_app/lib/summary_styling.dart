import 'package:flutter/material.dart';
import 'package:quiz_app/question_identifier.dart';
import 'package:quiz_app/styles/styled_correct_answer_text.dart';
import 'package:quiz_app/styles/styled_question_text.dart';
import 'package:quiz_app/styles/styled_user_answer_text.dart';

class SummaryStyling extends StatelessWidget {
  const SummaryStyling(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        itemData['user_answer'] == itemData['correct_answer'];

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionIdentifier(
            isCorrectAnswer: isCorrectAnswer,
            questionIndex: itemData['question_index'] as int,
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                QuestionText(
                  itemData['question'] as String,
                ),
                const SizedBox(
                  height: 5,
                ),
                UserAnswerText(
                  itemData['user_answer'] as String,
                ),
                CorrectAnswerText(
                  itemData['correct_answer'] as String,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
