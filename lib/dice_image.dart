import 'package:flutter/material.dart';

class DiceImage extends StatelessWidget {
  const DiceImage(this.num, {super.key});

  final int num;

  String constructPath() {
    return 'assets/images/dice-$num.png';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        constructPath(),
        width: 200,
        height: 200,
      ),
    );
  }
}
