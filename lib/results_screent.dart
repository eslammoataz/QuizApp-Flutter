import 'package:flutter/material.dart';
import 'package:quiz_app_flutter/data/questions.dart';
import 'package:quiz_app_flutter/questions_screen.dart';
import 'package:quiz_app_flutter/questions_summary.dart';

class ResultsScreent extends StatelessWidget {
  final List<String> chosenAnswers;
  const ResultsScreent({required this.chosenAnswers, super.key});

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < questions.length; i++) {
      summary.add({
        "question_index": i,
        "question": questions[i].text,
        "correctAnswer": questions[i].answers[0],
        "chosenAnswer": chosenAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numOfTotalQuestions = questions.length;
    final numOfCorrectAnswer = summaryData
        .where((data) => data["correctAnswer"] == data["chosenAnswer"])
        .length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                "You answered the  $numOfCorrectAnswer out of $numOfTotalQuestions questions correctly"),
            const SizedBox(height: 30),
            QuestionsSummary(
              summaryData: summaryData,
            ),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {
                // Restart the quiz
              },
              child: const Text(
                "Restart Quiz",
                style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
