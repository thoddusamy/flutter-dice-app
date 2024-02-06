import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp(this.colors, {super.key});

  final List colors;

  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [...colors],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
          ),
          child: const Center(
            child: DiceRoller(),
          ),
        ),
      ),
    );
  }
}
