class Question {
  String _category;
  String _type;
  String _difficulty;
  String _question;
  String _correctAnswer;
  List<String> _incorrectAnswers;

  Question(
      {String category,
      String type,
      String difficulty,
      String question,
      String correctAnswer,
      List<String> incorrectAnswers,
      List<String> answers}) {
    this._category = category;
    this._type = type;
    this._difficulty = difficulty;
    this._question = question;
    this._correctAnswer = correctAnswer;
    this._incorrectAnswers = incorrectAnswers;
  }

  String get category => _category;
  set category(String category) => _category = category;
  String get type => _type;
  set type(String type) => _type = type;
  String get difficulty => _difficulty;
  set difficulty(String difficulty) => _difficulty = difficulty;
  String get question => _question;
  set question(String question) => _question = question;
  String get correctAnswer => _correctAnswer;
  set correctAnswer(String correctAnswer) => _correctAnswer = correctAnswer;
  List<String> get incorrectAnswers => _incorrectAnswers;
  set incorrectAnswers(List<String> incorrectAnswers) =>
      _incorrectAnswers = incorrectAnswers;

  Question.fromJson(Map<String, dynamic> json) {
    _category = json['category'];
    _type = json['type'];
    _difficulty = json['difficulty'];
    _question = json['question'];
    _correctAnswer = json['correct_answer'];
    _incorrectAnswers = json['incorrect_answers'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['category'] = this._category;
    data['type'] = this._type;
    data['difficulty'] = this._difficulty;
    data['question'] = this._question;
    data['correct_answer'] = this._correctAnswer;
    data['incorrect_answers'] = this._incorrectAnswers;

    return data;
  }
}
