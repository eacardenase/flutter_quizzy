import 'package:flutter/material.dart';

import 'package:quizzy/models/question_summary.dart';
import 'package:quizzy/widgets/summary_item.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({
    super.key,
    required this.summaryData,
  });

  final List<QuestionSummary> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (summary) {
              return SummaryItem(questionSummary: summary);
            },
          ).toList(),
        ),
      ),
    );
  }
}
