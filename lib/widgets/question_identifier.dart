import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier({
    super.key,
    required this.questionIndex,
    required this.isCorrectedAnswer,
  });

  final int questionIndex;
  final bool isCorrectedAnswer;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrectedAnswer ? Colors.cyan.shade600 : Colors.pink.shade600,
        borderRadius: BorderRadius.circular(
          100,
        ),
      ),
      child: Text(
        "${questionIndex + 1}",
        style: GoogleFonts.lato(
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
