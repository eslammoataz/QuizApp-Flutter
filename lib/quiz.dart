import 'package:flutter/material.dart';
import 'package:quiz_app_flutter/questions_screen.dart';
import 'package:quiz_app_flutter/results_screent.dart';
import 'package:quiz_app_flutter/start_screen.dart';
import 'package:quiz_app_flutter/data/questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  final List<String> selectedAnswers = [];

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      // selectedAnswers.clear();
      setState(() {
        activeScreen = ResultsScreent(
          chosenAnswers: selectedAnswers,
        );
      });
    }
  }

  void switchScreen() {
    setState(() {
      activeScreen = QuestionsScreen(chooseAnswer);
    });
  }

  Widget? activeScreen;

  @override
  void initState() {
    // exeutes once at the beginning of the state and before bulding the UI
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      title: "Quiz App",
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color.fromARGB(255, 131, 76, 228), Colors.deepPurple],
            ),
          ),
          // alignment: Alignment.center,
          child: activeScreen,
        ),
      ),
    ));
  }
}
