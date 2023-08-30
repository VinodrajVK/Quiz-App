import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/models/quiz_question.dart';
import 'package:quiz_app/styled_text.dart';

List<int> numQuestion = [10, 20, 50];
var numQuestions = 10;
List<Question> selectedQuestions = [];

class SelectQuestions extends StatefulWidget {
  const SelectQuestions({
    Key? key,
    required this.selectq,
  }) : super(key: key);

  final void Function() selectq;

  @override
  State<SelectQuestions> createState() {
    return _SelectQuestionsState();
  }
}

class _SelectQuestionsState extends State<SelectQuestions> {
  List<Question> randomQuestions() {
    questions.shuffle();
    selectedQuestions = questions.sublist(0, numQuestions);
    return selectedQuestions;
  }

  void _changeScreen() {
    setState(() {
      randomQuestions();
    });
    widget.selectq();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.all(15),
          child: const StyledText('Select The Number of Questions'),
        ),
        DropdownButton<int>(
          dropdownColor: Colors.cyan,
          iconDisabledColor: Colors.green,
          value: numQuestions,
          items: numQuestion
              .map(
                (number) => DropdownMenuItem<int>(
                  value: number,
                  child: StyledText(
                    number.toString(),
                  ),
                ),
              )
              .toList(),
          onChanged: (value) {
            if (value != null) {
              setState(() {
                numQuestions = value;
                randomQuestions();
              });
            }
          },
        ),
        const SizedBox(
          height: 15,
        ),
        TextButton.icon(
          onPressed: () {
            _changeScreen();
          },
          label: const StyledText(
            'Go',
          ),
          icon: const Icon(
            Icons.arrow_right_alt,
            color: Colors.white,
            size: 20,
          ),
          style: ButtonStyle(
            side: MaterialStateProperty.all(
              const BorderSide(color: Colors.white),
            ),
            backgroundColor: MaterialStateProperty.all(Colors.transparent),
          ),
        )
      ],
    );
  }
}
