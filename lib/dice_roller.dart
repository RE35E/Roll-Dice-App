import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-1.png';
  var currentDiceRoll = 2;
  final randomizer = Random();

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
      activeDiceImage = 'assets/images/dice-$currentDiceRoll.png';
    });
  }

  @override
  build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(activeDiceImage, width: 200),
        TextButton(
          style: TextButton.styleFrom(
            padding: EdgeInsets.only(top: 20),
            foregroundColor: const Color.fromARGB(255, 255, 255, 255),
            textStyle: TextStyle(fontSize: 28),
          ),
          onPressed: rollDice,
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}
