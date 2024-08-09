import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  final imageUrl = "assets/images/quiz-logo.png";

  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Opacity(
          //   opacity: 0.9,
          //   child: Image.asset(
          //     imageUrl,
          //     width: 350,
          //   ),
          // ),

          Image.asset(
            imageUrl,
            width: 350,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),

          const SizedBox(height: 70),

          Text(
            "Learn Flutter the fun way!",
            style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 255, 255, 255),
              fontSize: 24,
            ),
          ),

          const SizedBox(height: 70),

          OutlinedButton.icon(
            onPressed: () {
              startQuiz();
            },
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.poll_outlined),
            label: const Text(
              "Start Quiz",
            ),
          ),
        ],
      ),
    );
  }
}
