import 'package:dice_app/widgets/style_text.dart';
import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromARGB(255, 1, 16, 106),
          Color.fromARGB(255, 43, 147, 212)
        ], begin: Alignment.topLeft, end: Alignment.bottomRight),
      ),
      child: const Center(child: StyleText()),
    );
  }
}
