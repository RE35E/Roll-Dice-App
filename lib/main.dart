import 'package:flutter/material.dart';
import 'package:dice_app/gradient_containter.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          colors: [
            Color.fromARGB(95, 119, 139, 153),
            Color.fromARGB(95, 94, 129, 154),
            Color.fromARGB(95, 36, 103, 151),
            Color.fromARGB(95, 1, 77, 131),
          ],
        ),
      ),
    ),
  );
}
