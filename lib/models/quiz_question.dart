class QuizQuestion {
  QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    final shuffledLlist = List.of(answers);
    shuffledLlist.shuffle();
    return shuffledLlist;
  }
}
