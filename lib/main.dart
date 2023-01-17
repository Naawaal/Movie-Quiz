import 'package:flutter/material.dart';
import 'package:movie_quiz/homepage.dart';

void main() {
  runApp(const MovieQuiz());
}

class MovieQuiz extends StatelessWidget {
  const MovieQuiz({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movie Quiz',
      home: Homepage(),
    );
  }
}
