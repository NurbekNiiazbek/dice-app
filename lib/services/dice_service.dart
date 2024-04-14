import 'dart:math';

class DiceServices {
  static Random random = Random();

  static int throwDice1() {
    return random.nextInt(6) + 1;
  }

  static int throwDice2() {
    return random.nextInt(6) + 1;
  }

  static int throwDice() {
    return random.nextInt(6) + 1;
  }
}
