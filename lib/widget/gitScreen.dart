import 'package:flutter/material.dart';
import 'package:flutter_homework_lesson_28/theme/text_style.dart';

class GitScreen extends StatefulWidget {
  const GitScreen({Key? key, required this.image, required this.title})
      : super(key: key);

  final String image;
  final String title;

  @override
  State<GitScreen> createState() => _GitScreenState();
}

class _GitScreenState extends State<GitScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 152),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 120),
          child: Image.asset(widget.image),
        ),
        const SizedBox(height: 60),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60),
          child: FittedBox(
            child: Text(
              widget.title,
              style: TextStyles.standart20w400,
            ),
          ),
        ),
      ],
    );
  }
}
