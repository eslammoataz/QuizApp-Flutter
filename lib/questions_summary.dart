import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({required this.summaryData, super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            var correctAnswer = data["correctAnswer"]?.toString() ?? "";
            var chosenAnswer = data["chosenAnswer"]?.toString() ?? "";
            var question = data["question"]?.toString() ?? "";
            var questionIndex = (data["question_index"] as int?) ?? 0;

            var circleColor =
                (correctAnswer == chosenAnswer) ? Colors.green : Colors.red;

            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Circle with question number
                  Container(
                    width: 35,
                    height: 35,
                    margin: const EdgeInsets.only(right: 16.0),
                    decoration: BoxDecoration(
                      color: circleColor,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        (questionIndex + 1).toString(),
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 8.0),
                          child: Text(
                            question,
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          'Correct Answer: $correctAnswer',
                          style: const TextStyle(
                            color: Colors.greenAccent,
                          ),
                        ),
                        Text(
                          'Your Answer: $chosenAnswer',
                          style: TextStyle(
                            color: correctAnswer == chosenAnswer
                                ? Colors.greenAccent
                                : Colors.redAccent,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
