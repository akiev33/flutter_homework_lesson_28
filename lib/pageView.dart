import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_homework_lesson_28/mainScreen.dart';
import 'package:flutter_homework_lesson_28/resources/images/resources.dart';
import 'package:flutter_homework_lesson_28/theme/colors.dart';
import 'package:flutter_homework_lesson_28/widget/gitScreen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageViewScreens extends StatefulWidget {
  const PageViewScreens({Key? key}) : super(key: key);

  @override
  State<PageViewScreens> createState() => _PageViewScreensState();
}

class _PageViewScreensState extends State<PageViewScreens> {
  final controller = PageController(initialPage: 0);
  bool validateIndex = false;

  @override
  void initState() {
    controller.addListener(() {
      setState(() {});
      if (controller.page.toString() == '3.0') {
        validateIndex = true;
      } else {
        validateIndex = false;
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorE5E5E5,
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: controller,
              children: const [
                GitScreen(
                  image: Images.homeScreen,
                  title:
                      '          Lorem ipsum dolor sit amet, \n consectetur adipiscing elit. Sed quis \n aliquam id id in pharetra lorem. Purus \ntortor velit sed consequat urna, ipsum. \n Sit nullam ultrices sed morbi sed. Et \nblandit commodo vel blandit praesent \n sed donec ultrices a. Vel, laoreet in et \n      quam elit, sed viverra faucibus. \n   Proin nisi amet urna purus vivamus \n                  felis cursus nulla.  ',
                ),
                GitScreen(
                  image: Images.splashScreen,
                  title: '2',
                ),
                GitScreen(
                  image: Images.homeScreen,
                  title: '3',
                ),
                GitScreen(
                  image: Images.homeScreen,
                  title:
                      '          Lorem ipsum dolor sit amet, \n consectetur adipiscing elit. Sed quis \n aliquam id id in pharetra lorem. Purus \ntortor velit sed consequat urna, ipsum. \n Sit nullam ultrices sed morbi sed. Et \nblandit commodo vel blandit praesent \n sed donec ultrices a. Vel, laoreet in et \n      quam elit, sed viverra faucibus. \n   Proin nisi amet urna purus vivamus \n                  felis cursus nulla.  ',
                ),
              ],
            ),
          ),
          if (validateIndex)
            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => const MainScreen()),
                    (route) => false);
              },
              child: const Text('Next'),
            ),
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.only(bottom: 157),
            child: Center(
              child: SmoothPageIndicator(
                controller: controller,
                count: 4,
                effect: const WormEffect(
                  activeDotColor: AppColors.color59A4F2,
                  dotColor: AppColors.color50B1DE,
                  spacing: 20,
                  dotHeight: 8,
                  dotWidth: 8,
                ),
                onDotClicked: (index) => controller.animateToPage(index,
                    duration: const Duration(microseconds: 500),
                    curve: Curves.bounceOut),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
