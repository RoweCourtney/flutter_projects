import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class UserAnswerText extends StatelessWidget {
  const UserAnswerText(this.text, {super.key});

  final String text;

  @override
  Widget build(context) {
    return Text(
      text,
      style: GoogleFonts.montserrat(
        color: Colors.blue,
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
