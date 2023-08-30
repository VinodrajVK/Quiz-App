import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions.dart';
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
          'assets/images/indian-quiz.png',
          width: 350,
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          'The Indian Quiz',
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        OutlinedButton.icon(
          onPressed: () {
            questions.shuffle();
            startq();
          },
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
