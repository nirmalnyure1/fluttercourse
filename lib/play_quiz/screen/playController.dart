import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'package:professional_class/play_quiz/screen/config.dart';
import 'package:professional_class/play_quiz/screen/question.dart';

class PlayController with ChangeNotifier {
  List<Question> _question = new List();
  List<Question> get question => _question;
  int _currentIndex = 0;
  int get currentIndex => _currentIndex;

  List<String> _userAnswer = new List();
  List<String> get userAnswer => _userAnswer;

  data_fetch_state _fetch_state = data_fetch_state.IS_LOADING;
  data_fetch_state get fetch_sate => _fetch_state;

  onNotifyListner(data_fetch_state value) {
    _fetch_state = value;
    notifyListeners();
    onNotifyListner(data_fetch_state.DATA_LOADED);
  }

  setCurrentIndex(int index) {
    _currentIndex = index;
    onNotifyListner(data_fetch_state.DATA_LOADED);
  }

  setUserAnswer(String answer) {
    _userAnswer.add(answer);
    onNotifyListner(data_fetch_state.DATA_LOADED);
  }

  PlayController() {
    getQuiz();
  }

  getQuiz() async {
    try {
      var url = '$QUIZ_API_URL?amount=10&category=21';

      // Await the http get response, then decode the json-formatted response.
      var response = await http.get(url);

      print('API CALL:${response.statusCode.toString()}');
      if (response.statusCode == 200) {
        var jsonResponse = convert.jsonDecode(response.body);
        jsonResponse['results'].forEach((v) {
          _question.add(Question.fromJson(v));
        });
        onNotifyListner(data_fetch_state.DATA_LOADED);
      } else {
        print('request faild with status');
      }
    } catch (e) {
      print('here in catch');
      print(e.toString());
    }
  }
}
