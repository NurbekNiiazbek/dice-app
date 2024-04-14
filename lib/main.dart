import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sabak_04/ui/pages/dice_page.dart';
import 'package:flutter_sabak_04/ui/pages/dice_page_with_riverpod.dart';

void main() {
  runAppWithRiverpod();
}

void runAppWithFlutter() {
  runApp(const MyFlutterApp());
}

void runAppWithRiverpod() {
  runApp(const ProviderScope(child: MyRiverpodApp()));
}

class MyFlutterApp extends StatelessWidget {
  const MyFlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const DicePage(),
    );
  }
}

class MyRiverpodApp extends StatelessWidget {
  const MyRiverpodApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const DicePageWithRiverpod(),
    );
  }
}
