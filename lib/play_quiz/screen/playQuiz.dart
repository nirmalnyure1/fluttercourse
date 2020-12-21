import 'package:flutter/material.dart';
import 'package:professional_class/play_quiz/screen/config.dart';
import 'package:professional_class/play_quiz/screen/playController.dart';
import 'package:professional_class/play_quiz/screen/questionUI.dart';
import 'package:provider/provider.dart';

class PlayQuiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => PlayController(),
        ),
      ],
      child: PlayQuizPresenter(),
    );
  }
}

class PlayQuizPresenter extends StatefulWidget {
  @override
  _PlayQuizPresenterState createState() => _PlayQuizPresenterState();
}

class _PlayQuizPresenterState extends State<PlayQuizPresenter> {
  PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final playQuizState = Provider.of<PlayController>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Play Quiz',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: playQuizState.fetch_sate == data_fetch_state.IS_LOADING
          ? Center(child: CircularProgressIndicator())
          : PageView(
              onPageChanged: (page) {
                playQuizState.setCurrentIndex(page);
              },
              controller: _controller,
              children: [
                ...playQuizState.question.map((e) {
                  return QuestionUI(question: e);
                })
              ],
            ),
    );
  }
}
