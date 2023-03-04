class Choice {
  final String text;
  final String value;
  final bool correct;

  Choice(this.text, this.value, this.correct);
}

class QuestionModel {
  final String title;
  final List<Choice> choices;
  QuestionModel(this.choices, this.title);
}
