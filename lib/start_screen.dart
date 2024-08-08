import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  final imageUrl = "assets/images/quiz-logo.png";
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          imageUrl,
          width: 350,
        ),
        const SizedBox(height: 70),
        const Text(
          "Learn Flutter the fun way!",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 70),
        OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
          ),
          child: const Text(
            "Go To Quiz",
          ),
        ),
      ],
    );
  }
}
