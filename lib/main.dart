import 'package:flutter/material.dart';
import 'package:quiz_app_flutter/quiz.dart';
// import 'package:quiz_app_flutter/quiz.dart';

void main() {
  runApp(const Quiz());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Quiz App',
      home: Quiz(),
    );
  }
}
