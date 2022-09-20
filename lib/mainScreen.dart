import 'package:flutter/material.dart';
import 'package:flutter_homework_lesson_28/resources/images/resources.dart';
import 'package:flutter_homework_lesson_28/theme/colors.dart';
import 'package:flutter_homework_lesson_28/widget/mainScreenModel.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorE5E5E5,
      body: ListView(
        children: const [
          SizedBox(height: 84),
          MainScreenModel(
            image: Images.icon1,
            title: 'Попали в трудную ситуацию?',
            subtitle: 'Телефоны служб',
          ),
          SizedBox(height: 32),
          MainScreenModel(
            image: Images.icon2,
            title: 'Тематически провести день?',
            subtitle: 'Маршруты прогулок',
          ),
          SizedBox(height: 32),
          MainScreenModel(
            image: Images.icon3,
            title: 'Легко общаться с жителями??',
            subtitle: 'Выучите язык',
          ),
          SizedBox(height: 32),
          MainScreenModel(
            image: Images.icon4,
            title: 'Хотите больше увидеть в России??',
            subtitle: 'Поездка по городам',
          ),
          SizedBox(height: 32),
          MainScreenModel(
            image: Images.icon5,
            title: 'Нравится духовно развиваться??',
            subtitle: 'Музеи города',
          ),
        ],
      ),
    );
  }
}
