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
    final summaryData = getSummaryData();
    final numOfTotalQuestions = questions.length;
    final numOfCorrectAnsweredQuestions = summaryData.where((summary) {
      return summary["correctAnswer"] == summary["correctAnswer"];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answered $numOfCorrectAnsweredQuestions out of $numOfTotalQuestions questions correctly.',
            ),
            const SizedBox(height: 30),
            QuestionsSummary(summaryData: summaryData),
            const SizedBox(height: 30),
            TextButton.icon(
              icon: const Icon(Icons.replay),
              onPressed: () {},
              label: const Text("Restart  quiz."),
            ),
          ],
        ),
      ),
    );
  }
}
