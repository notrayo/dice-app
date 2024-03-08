//import 'package:dice_app/widgets/style_text.dart';
import 'package:flutter/material.dart';

class ElevatedButtonn extends StatelessWidget {
  ElevatedButtonn(
      {super.key, required this.buttonText, required this.onPressed});

  final String buttonText;

  var activeDice = 'assets/dice-images/dice-1.png';
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 229, 213, 30),
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20)),
        child: Text(buttonText,
            style: const TextStyle(color: Colors.black, fontSize: 20)));
  }
}
