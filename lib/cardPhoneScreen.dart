import 'package:flutter/material.dart';
import 'package:flutter_homework_lesson_28/cardPhoneScreen2.dart';
import 'package:flutter_homework_lesson_28/theme/colors.dart';
import 'package:flutter_homework_lesson_28/theme/text_style.dart';

class CardPhoneScreen extends StatefulWidget {
  const CardPhoneScreen({Key? key, required this.text, required this.number})
      : super(key: key);

  final String text;
  final String number;

  @override
  State<CardPhoneScreen> createState() => _CardPhoneScreenState();
}

class _CardPhoneScreenState extends State<CardPhoneScreen> {
  bool obsecured = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorE5E5E5,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 86),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                    color: AppColors.color59A4F3,
                  ),
                  iconSize: 23,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Text(
                  'КАРТОЧКА ТЕЛЕФОНА',
                  style: TextStyles.standart14w500,
                ),
                IconButton(
                  icon: Icon(
                    obsecured ? Icons.favorite : Icons.favorite_border,
                    color: AppColors.colorF1564A,
                  ),
                  iconSize: 25,
                  onPressed: () {
                    obsecured = !obsecured;
                    setState(() {});
                  },
                ),
              ],
            ),
            const SizedBox(height: 42),
            Text(
              'Скорая помощь',
              style: TextStyles.standart36w600,
            ),
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '112',
                  style: TextStyles.standart41w800,
                ),
                SizedBox(
                  height: 50,
                  width: 150,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.colorF1564A,
                    ),
                    child: FittedBox(
                      child: Text(
                        'ПОЗВОНИТЬ',
                        style: TextStyles.standart18w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 28),
            FittedBox(
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing\nelit. Et sed tempor, at magna purus quam sit id. Ut id\naliquam molestie tortor, amet, suspendisse mi. \nDictum viverra accumsan a proin amet. Amet, velit \nconsequat enim urna, pellentesque in cursus \nauctor. Erat a, sapien, nisl id et. Egestas rhoncus, \ncommodo convallis mauris. ',
                style: TextStyles.standart16w400,
              ),
            ),
            const SizedBox(height: 32),
            Text(
              'Причины вызова',
              style: TextStyles.standart24w600,
            ),
            const SizedBox(height: 34),
            const Docks(),
            const SizedBox(height: 16),
            const Docks(),
            const SizedBox(height: 16),
            const Docks(),
            const SizedBox(height: 28),
            SizedBox(
              height: 50,
              width: 344,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PhoneScreen2(
                          text: widget.text, number: widget.number),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.color59A4F3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: FittedBox(
                  child: Text(
                    'РЕДАКТИРОВАТЬ',
                    style: TextStyles.standart18w400,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Docks extends StatelessWidget {
  const Docks({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 4,
          width: 4,
          decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(Radius.circular(20))),
        ),
        const SizedBox(width: 12),
        Text('Причина 1'),
      ],
    );
  }
}
