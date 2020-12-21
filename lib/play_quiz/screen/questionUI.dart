import 'package:flutter/material.dart';
import 'package:professional_class/play_quiz/screen/playController.dart';
import 'package:professional_class/play_quiz/screen/question.dart';
import 'package:provider/provider.dart';

class QuestionUI extends StatefulWidget {
  Question question;
  List<String> answer = new List();

  QuestionUI({Question question}) {
    this.question = question;
    question.incorrectAnswers.forEach((element) {
      answer.add(element);
    });
    answer.add(question.correctAnswer);
    answer.shuffle();
  }

  @override
  _QuestionUIState createState() => _QuestionUIState();
}

class _QuestionUIState extends State<QuestionUI> {
  double _asWidth = 0;
  String userAnswer = '';

  @override
  Widget build(BuildContext context) {
    _asWidth = MediaQuery.of(context).size.width / 2 - 20;
    final playQuizState = Provider.of<PlayController>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.question.question,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 22,
          ),
        ),
        Wrap(
          children: [
            ...widget.answer.map((e) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    userAnswer = e;
                    setState(() {});
                  },
                  child: Container(
                    padding: EdgeInsets.all(5.0),
                    color:
                        _correctAnswerColor(e, widget.question.correctAnswer),
                    width: _asWidth,
                    child: Center(child: Text(e)),
                  ),
                ),
              );
            }),
          ],
        )
      ],
    );
  }

  _correctAnswerColor(String userAnswer, String correctQuestion) {
    if (userAnswer != '') {
      if (userAnswer == correctQuestion) {
        return Colors.green;
      } else
        return Colors.red;
    } else
      return Colors.grey.shade100;
  }
}
