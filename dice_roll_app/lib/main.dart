import "package:flutter/material.dart";
import "package:dice_roll_app/gradient_container.dart";

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          [
            Color.fromARGB(255, 104, 126, 121),
            Color.fromARGB(255, 64, 77, 74),
          ],
        ),
      ),
    ),
  );
}
