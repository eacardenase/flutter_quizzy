import 'package:flutter/material.dart';

import 'package:quizzy/data/questions.dart';
import 'package:quizzy/widgets/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.selectedAnswers,
  });

  final List<String> selectedAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < selectedAnswers.length; i++) {
      final currentQuestion = questions[i];

      summary.add({
        "questionIndex": i,
        "question": currentQuestion.text,
        "correctAnswer": currentQuestion.options[0],
        "selectedAnswer": selectedAnswers[i],
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("You answered X out of Y questions correctly. "),
            const SizedBox(height: 30),
            QuestionsSummary(summaryData: getSummaryData()),
            const SizedBox(height: 30),
            TextButton.icon(
                icon: const Icon(Icons.replay),
                onPressed: () {},
                label: const Text("Restart  quiz.")),
          ],
        ),
      ),
    );
  }
}
