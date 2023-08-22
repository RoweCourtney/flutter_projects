import "package:flutter/material.dart";

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.answerText, this.onclick, {super.key});

  final String answerText;
  final void Function() onclick;

  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: onclick,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 157, 3, 88),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        textStyle: const TextStyle(
          fontSize: 18,
        ),
      ),
      child: Text(answerText),
    );
  }
}
