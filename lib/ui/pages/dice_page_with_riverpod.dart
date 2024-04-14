import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sabak_04/providers/state_notifier_provider.dart';
import 'package:flutter_sabak_04/ui/widgets/dice_widget.dart';

class DicePageWithRiverpod extends ConsumerWidget {
  const DicePageWithRiverpod({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final diceOne = ref.watch(diceOneProvider);
    final diceTwo = ref.watch(diceTwoProvider);

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
              ref.read(diceOneProvider.notifier).throwDice();
              ref.read(diceTwoProvider.notifier).throwDice();
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DiceWidget(diceNumber: diceOne),
                const SizedBox(width: 20),
                DiceWidget(diceNumber: diceTwo),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
