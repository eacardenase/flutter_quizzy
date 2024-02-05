class QuizQuestion {
  const QuizQuestion({
    required this.text,
    required this.options,
  });

  final String text;
  final List<String> options;

  List<String> get shuffledOptions {
    final optionsCopy = List.of(options);

    optionsCopy.shuffle();

    return optionsCopy;
  }
}
