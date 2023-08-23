import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:quiz_app/styled_text.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    required this.onTap,
    required this.answerText,
  });
  final String answerText;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
        backgroundColor: const Color.fromARGB(255, 254, 9, 67),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      child: Text(
        answerText,
        style: GoogleFonts.poppins(
          color: Colors.white,
          fontSize: 16,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
