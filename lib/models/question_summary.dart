class QuestionSummary {
  const QuestionSummary({
    required this.questionIndex,
    required this.questionTitle,
    required this.correctAnswer,
    required this.selectedAnswer,
  });

  final int questionIndex;
  final String questionTitle;
  final String correctAnswer;
  final String selectedAnswer;

  bool get isSelectedAnswerCorrect {
    return correctAnswer == selectedAnswer;
  }
}
