import 'package:flutter/material.dart';
import "package:quiz_app/gradient_container.dart";

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          [
            Color.fromARGB(255, 57, 4, 81),
            Color.fromARGB(255, 140, 4, 182),
            Color.fromARGB(255, 120, 3, 124),
          ],
        ),
      ),
    ),
  );
}
