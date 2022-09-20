import 'package:flutter/material.dart';
import 'package:flutter_homework_lesson_28/cardPhoneScreen.dart';
import 'package:flutter_homework_lesson_28/theme/colors.dart';
import 'package:flutter_homework_lesson_28/theme/text_style.dart';

class MainScreenModel extends StatefulWidget {
  const MainScreenModel(
      {Key? key,
      required this.image,
      required this.title,
      required this.subtitle})
      : super(key: key);

  final String image;
  final String title;
  final String subtitle;

  @override
  State<MainScreenModel> createState() => _MainScreenModelState();
}

class _MainScreenModelState extends State<MainScreenModel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      height: 80,
      // width: 363,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const CardPhoneScreen(
                      text: 'Hello',
                      number: '0000',
                    )),
          );
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                widget.image,
                height: 40,
                width: 40,
              ),
              const SizedBox(width: 12),
              Padding(
                padding: const EdgeInsets.only(right: 0),
                child: SizedBox(
                  width: 250,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.title, style: TextStyles.standart12w400),
                      const SizedBox(height: 5),
                      Text(widget.subtitle, style: TextStyles.standart16w600),
                    ],
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 4,
                    height: 4,
                    decoration: const BoxDecoration(
                        color: AppColors.colorFFFFFF,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    width: 4,
                    height: 4,
                    decoration: const BoxDecoration(
                        color: AppColors.colorFFFFFF,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    width: 4,
                    height: 4,
                    decoration: const BoxDecoration(
                      color: AppColors.colorFFFFFF,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
