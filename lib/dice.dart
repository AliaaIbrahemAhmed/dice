import 'dart:math';

import 'package:dice/dice_image.dart';
import 'package:flutter/material.dart';

class Dice extends StatefulWidget {
  const Dice({super.key});

  @override
  State<StatefulWidget> createState() {
    return DiceState();
  }
}

class DiceState extends State<Dice> {
  late int num;

  @override
  void initState() {
    super.initState();
    num = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dice')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            DiceImage(num),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  num = Random().nextInt(6) + 1;
                });
              },
              child: const Text('Roll'),
            ),
          ],
        ),
      ),
    );
  }
}
