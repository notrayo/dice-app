import 'dart:math';

import 'package:dice_app/widgets/elevated_button.dart';
import 'package:dice_app/widgets/style_text.dart';
import 'package:flutter/material.dart';

//variables

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatefulWidget {
  const GradientContainer({super.key, required this.colors});

  final List colors;

  @override
  State<GradientContainer> createState() => _GradientContainerState();
}

class _GradientContainerState extends State<GradientContainer> {
  late String currentDiceImage;

  @override
  void initState() {
    super.initState();

    currentDiceImage = 'assets/dice-images/dice-1.png';
  }

  void diceRoller() {
    List<String> diceImages = [
      'assets/dice-images/dice-1.png',
      'assets/dice-images/dice-2.png',
      'assets/dice-images/dice-3.png',
      'assets/dice-images/dice-4.png',
      'assets/dice-images/dice-5.png',
      'assets/dice-images/dice-6.png',
    ];

    // set randomizer
    var random = Random();
    var newDiceImagePath = diceImages[random.nextInt(diceImages.length)];

    //currentDiceImage = newDiceImagePath;

    setState(() {
      currentDiceImage = newDiceImagePath;
    });
  }

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: const [
          Color.fromARGB(255, 1, 16, 106),
          Color.fromARGB(255, 43, 147, 212)
        ], begin: startAlignment, end: endAlignment),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 70,
          ),
          const Align(
              alignment: Alignment.topCenter,
              child: StyleText(
                text: 'Dice app here...',
              )),
          const SizedBox(
            height: 60,
          ),
          Align(
              alignment: Alignment.center,
              child: Image.asset(
                currentDiceImage,
                width: 250,
                height: 250,
              )),
          const SizedBox(
            height: 60,
          ),
          ElevatedButtonn(
            buttonText: 'Tap to Roll',
            onPressed: diceRoller,
          )
        ],
      ),
    );
  }
}
