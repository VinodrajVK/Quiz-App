import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              children: [
                Container(
                  height: 30,
                  width: 30,
                  margin: const EdgeInsets.only(bottom: 75),
                  decoration: BoxDecoration(
                      color: data['user_answer'] == data['correct_answer']
                          ? Colors.lightGreen
                          : Colors.pink,
                      borderRadius: BorderRadius.circular(100)),
                  child: Text(
                    ((data['question_index'] as int) + 1).toString(),
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        data['question_text'].toString(),
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'Your Answer : ${data['user_answer']}',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        'Correct Answer : ${data['correct_answer']}',
                        style: GoogleFonts.poppins(
                          color: Color.fromARGB(255, 179, 251, 11),
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                )
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
