import 'package:flutter/material.dart';
import 'package:flutter_homework_lesson_28/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const SplashScreen();
  }
}
