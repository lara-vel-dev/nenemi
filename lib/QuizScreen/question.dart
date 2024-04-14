class WidgetOption {
  final String text;
  final bool isCorrect;

  const WidgetOption({required this.text, required this.isCorrect});
}

class WidgetQuestion {
  final String text;
  final List<WidgetOption> options;
  final int id;
  final String path;
  final WidgetOption correctAnswer;

  const WidgetQuestion({
    required this.text,
    required this.options,
    required this.id,
    required this.path,
    required this.correctAnswer,
  });
}
