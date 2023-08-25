import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class CorrectAnswerText extends StatelessWidget {
  const CorrectAnswerText(this.text, {super.key});

  final String text;

  @override
  Widget build(context) {
    return Text(
      text,
      style: GoogleFonts.montserrat(
        color: Colors.green,
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
