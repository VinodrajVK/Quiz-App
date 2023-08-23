import 'package:flutter/material.dart';
import 'package:quiz_app/styled_text.dart';

class StartQuiz extends StatelessWidget {
  const StartQuiz(this.startq, {super.key});

  final void Function() startq;

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
          color: const Color.fromARGB(158, 255, 255, 255),
        ),
        const SizedBox(
          height: 50,
        ),
        const StyledText(
          'Learn Flutter the Fun Way!',
        ),
        const SizedBox(
          height: 40,
        ),
        OutlinedButton.icon(
          onPressed: startq,
          label: const StyledText(
            'Start Quiz',
          ),
          icon: const Icon(
            Icons.arrow_right_alt,
            color: Colors.white,
            size: 20,
          ),
        )
      ],
    );
  }
}
