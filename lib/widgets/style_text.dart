import 'package:flutter/material.dart';

class StyleText extends StatelessWidget {
  const StyleText({required this.text, super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(color: Colors.white, fontSize: 20),
    );
  }
}
