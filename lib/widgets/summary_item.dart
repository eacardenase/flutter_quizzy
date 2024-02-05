import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:quizzy/widgets/question_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem({
    super.key,
    required this.itemData,
  });

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectedAnswer =
        itemData["correctAnswer"] == itemData["selectedAnswer"];

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 6,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionIdentifier(
            questionIndex: itemData["questionIndex"] as int,
            isCorrectedAnswer: isCorrectedAnswer,
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  itemData["question"] as String,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  itemData["selectedAnswer"] as String,
                  style: GoogleFonts.lato(
                    color: Colors.pink.shade600,
                  ),
                ),
                Text(
                  itemData["correctAnswer"] as String,
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
