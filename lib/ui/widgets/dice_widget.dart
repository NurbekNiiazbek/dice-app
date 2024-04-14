import 'package:flutter/material.dart';

class DiceWidget extends StatelessWidget {
  const DiceWidget({
    super.key,
    required this.diceNumber,
  });

  final int diceNumber;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Image.asset(
        'assets/dice-$diceNumber.png',
        color: Colors.white,
      ),
    );
  }
}
