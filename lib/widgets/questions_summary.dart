import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({
    super.key,
    required this.summaryData,
  });

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (summary) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "${(summary['questionIndex'] as int) + 1}",
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(summary["question"] as String),
                        const SizedBox(height: 5),
                        Text(summary["selectedAnswer"] as String),
                        Text(summary["correctAnswer"] as String)
                      ],
                    ),
                  )
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
