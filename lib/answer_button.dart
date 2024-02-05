import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {super.key, required this.answerText, required this.onTap});

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            vertical: 12,
            horizontal: 20,
          ),
          backgroundColor: const Color.fromARGB(255, 63, 31, 175),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(65),
          )),
      child: Text(
        answerText,
        style: const TextStyle(color: Color.fromARGB(255, 231, 226, 226)),
        textAlign: TextAlign.center,
      ),
    );
  }
}
