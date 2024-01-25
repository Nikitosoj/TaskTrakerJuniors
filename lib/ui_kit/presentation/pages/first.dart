import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theme/background.dart';
import '../components/button.dart';
import '../components/main_image.dart';
import '../components/main_text.dart';
import '../components/second_text.dart';

class First extends StatelessWidget {
  const First({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundWidget(),
          SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 110.h,
                ),
                const MainText(
                  fontsize: 40,
                  name: 'TaskTrakerJuniors',
                  textColor: Color.fromRGBO(217, 217, 217, 1),
                ),
                const MainImage(),
                Padding(
                  padding: EdgeInsets.only(top: 11.h),
                  child: const SecondText(
                    fontSize: 16,
                    name: 'Начни свою работу вместе с нами!',
                  ),
                ),
                SizedBox(
                  height: 159.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Button(
                      name: 'Войти',
                      onPress: () {
                        Navigator.of(context).pushReplacementNamed('/login');
                      },
                    ),
                    Button(
                        name: 'Создать аккаунт',
                        onPress: () {
                          Navigator.of(context).pushReplacementNamed('/regist');
                        }),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
