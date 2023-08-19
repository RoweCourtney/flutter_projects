import "package:flutter/material.dart";
import "package:quiz_app/start_screen.dart";

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.gradientColor, {super.key});

  final List<Color> gradientColor;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradientColor,
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
        ),
      ),
      child: const Center(
        child: StartScreen(),
      ),
    );
  }
}
