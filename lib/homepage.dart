import 'package:flutter/material.dart';
import 'package:movie_quiz/model/quizQusetionsModel.dart';
import 'package:movie_quiz/widgets/buttonWidget.dart';
import 'package:movie_quiz/widgets/textWidget.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final List<QuizQuestionsModel> _quizQuestion = [
    QuizQuestionsModel(
      questions: 'Mulan is set in Japan',
      score: 8,
      answer: 'False',
    ),
    QuizQuestionsModel(
      questions: 'Ursula is a character in \'Cinderella\'.',
      score: 12,
      answer: 'False',
    ),
    QuizQuestionsModel(
      questions: 'In Frozen, Elsa’s sister is Anna',
      score: 15,
      answer: 'True',
    ),
    QuizQuestionsModel(
      questions: 'Mufasa is Simba’s uncle',
      score: 5,
      answer: 'False',
    ),
  ];

  var _questionIndex = 0;

  var _score = 0;

  void _nextQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  void _totalScore() {
    setState(() {
      _score = _score + _quizQuestion[_questionIndex].score;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _score = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueGrey[900],
        title: const Text('Movie Quiz'),
        elevation: 0,
      ),
      body: _questionIndex < _quizQuestion.length
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: TextWidget(
                    text: _quizQuestion[_questionIndex].questions,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ButtonWidget(
                    text: 'True',
                    onPressed: () {
                      setState(() {
                        _nextQuestion();
                        _totalScore();
                      });
                    },
                    color: Colors.green,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ButtonWidget(
                    text: 'Flase',
                    onPressed: () {
                      setState(() {
                        _nextQuestion();
                        _totalScore();
                      });
                    },
                    color: Colors.red,
                  ),
                ),
              ],
            )
          : Column(
              children: [
                Center(
                  child: Text(
                    ' $_score you did it!',
                    style: const TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
                MaterialButton(
                  onPressed: _resetQuiz,
                  color: Colors.blueGrey[900],
                  textColor: Colors.white,
                  minWidth: 200,
                  height: 50,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text('Restart Quiz'),
                ),
              ],
            ),
    );
  }
}
