import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier({
    super.key,
    required this.isCorrectAnswer,
    required this.questionIndex,
  });

  final bool isCorrectAnswer;
  final int questionIndex;

  @override
  Widget build(context) {
    final questionNumber = questionIndex + 1;
    return Container(
      height: 35,
      width: 35,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: isCorrectAnswer
              ? const Color.fromARGB(255, 34, 88, 235)
              : const Color.fromARGB(185, 37, 57, 158),
          borderRadius: BorderRadius.circular(100)),
      child: Text(
        questionNumber.toString(),
        style: GoogleFonts.roboto(
          fontWeight: FontWeight.bold,
          color: const Color.fromARGB(255, 151, 160, 192),
        ),
      ),
    );
  }
}
