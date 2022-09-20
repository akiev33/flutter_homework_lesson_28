import 'package:flutter/material.dart';
import 'package:flutter_homework_lesson_28/theme/colors.dart';
import 'package:flutter_homework_lesson_28/theme/text_style.dart';

class PhoneScreen2 extends StatelessWidget {
  const PhoneScreen2({Key? key, required this.text, required this.number})
      : super(key: key);

  final String text;
  final String number;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorE5E5E5,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          color: AppColors.color59A4F3,
          onPressed: () => Navigator.of(context).pop(),
        ),
        toolbarHeight: 100,
        backgroundColor: AppColors.colorE5E5E5,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 35, right: 17),
            child: Text(
              'Редактировать',
              style: TextStyles.standart16w400.copyWith(
                color: AppColors.color333333,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Название',
              style: TextStyles.standart21w600,
            ),
            // SizedBox(height: 12),
            TextField(
              decoration: InputDecoration(
                hintText: text,
                hintStyle: TextStyles.standart13w400,
              ),
            ),
            const SizedBox(height: 24),
            Text(
              'Телефон',
              style: TextStyles.standart21w600,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: number,
                hintStyle: TextStyles.standart13w400,
              ),
            ),
            const SizedBox(height: 24),
            Text(
              'Описание',
              style: TextStyles.standart21w600,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Водитель Владимир; четные даты',
                hintStyle: TextStyles.standart13w400,
              ),
            ),
            const SizedBox(height: 40),
            SizedBox(
              height: 50,
              width: 344,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.color59A4F3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: FittedBox(
                  child: Text(
                    'ДОБАВИТЬ',
                    style: TextStyles.standart18w400,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 28),
            DecoratedBox(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: SizedBox(
                height: 50,
                width: 344,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.color59A4F3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: FittedBox(
                    child: Text(
                      'УДАЛИТЬ',
                      style: TextStyles.standart18w400,
                    ),
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
