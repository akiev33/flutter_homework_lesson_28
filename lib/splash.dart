import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_homework_lesson_28/pageView.dart';
import 'package:flutter_homework_lesson_28/resources/images/resources.dart';
import 'package:flutter_homework_lesson_28/theme/colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimatedSplashScreen(
        splash: Center(
          child: Container(
            child: Image.asset(Images.splashScreen),
          ),
        ),
        nextScreen: const PageViewScreens(),
        duration: 3000,
        splashTransition: SplashTransition.scaleTransition,
        backgroundColor: AppColors.colorE5E5E5,
        splashIconSize: 220,
      ),
    );
    ;
  }
}
