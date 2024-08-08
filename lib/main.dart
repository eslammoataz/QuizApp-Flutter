import 'package:flutter/material.dart';
import 'package:quiz_app_flutter/start_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
          alignment: Alignment.center,
          child: const StartScreen(),
        ),
      ),
    );
  }
}
