import 'package:flutter/material.dart';
import 'dart:math';

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int dice1 = 6;
  int dice2 = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEE5A46),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'Dice',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: InkWell(
            onTap: () {
              yrgyt();
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Image.asset(
                    'assets/dice-$dice1.png',
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Image.asset(
                    'assets/dice-$dice2.png',
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void yrgyt() {
    Random random = Random();

    dice1 = random.nextInt(6) + 1;
    dice2 = random.nextInt(6) + 1;

    print('throwDiceRandomly.dice1: $dice1 ');
    print('throwDiceRandomly.dice2: $dice2 ');

    setState(() {});
  }
}


  // 1. data types (String, int, bool, Random, Car,...)
  // 2. variables ( int esepte = 100;)
  // 3. functions ( esepteniKoboyt(){ esepte++; }    )
  // 3. functions ( esepteniRandomnoOzgort () { esepteniKoboyt();   })

  /// Functions
  /// 1. jariyalaybiz
  /// funksiyaninAti(){}
  /// 2.chakirabiz, ishtebiz
  /// funksiyaninAti()