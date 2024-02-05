import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:quizzy/models/question_summary.dart';
import 'package:quizzy/widgets/question_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem({
    super.key,
    required this.questionSummary,
  });

  final QuestionSummary questionSummary;

  @override
  Widget build(BuildContext context) {
    final isCorrectedAnswer = questionSummary.isSelectedAnswerCorrect();

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 6,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionIdentifier(
            questionIndex: questionSummary.questionIndex,
            isCorrectedAnswer: isCorrectedAnswer,
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  questionSummary.questionTitle,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  questionSummary.selectedAnswer,
                  style: GoogleFonts.lato(
                    color: Colors.pink.shade600,
                  ),
                ),
                Text(
                  questionSummary.correctAnswer,
                  style: TextStyle(
                    color: Colors.cyan.shade600,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
