import 'package:flutter/material.dart';

class ScoreWidget extends StatelessWidget {
  const ScoreWidget({super.key, required this.score});
  final int score;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        score.toString(),
      ),
    );
  }
}
