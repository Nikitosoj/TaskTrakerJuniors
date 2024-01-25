import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theme/background.dart';
import '../components/button.dart';
import '../components/main_text.dart';
import '../components/second_text.dart';
import '../components/text_area.dart';

class Auth extends StatelessWidget {
  const Auth({
    super.key,
    required this.emailController,
    required this.passwordController,
    required this.onPress,
  });
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final VoidCallback onPress;

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
                  textColor: Color.fromRGBO(255, 255, 255, 1),
                  fontsize: 32,
                  name: 'Войти',
                ),
                SizedBox(
                  height: 25.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  child: SizedBox(
                    width: 321.w,
                    height: 51.h,
                    child: const SecondText(
                        fontSize: 16,
                        name:
                            '“TaskTrackerJuniors” идеально подходит для организации вашей работы'),
                  ),
                ),
                SizedBox(
                  height: 44.h,
                ),
                TextArea(
                  name: 'Email',
                  controller: emailController,
                ),
                SizedBox(
                  height: 26.h,
                ),
                TextArea(
                  name: 'Пароль',
                  controller: passwordController,
                ),
                SizedBox(
                  height: 61.h,
                ),
                SizedBox(
                    height: 40.h,
                    width: 294.w,
                    child: Button(
                      name: 'Войти',
                      onPress: onPress,
                    )),
                SizedBox(
                  height: 43.h,
                ),
                const SecondText(name: 'или войти с помощью', fontSize: 16),
                SizedBox(
                  height: 20.h,
                ),
                const MainText(
                    name: 'Sign in with Google',
                    fontsize: 16,
                    textColor: Colors.white),
                SizedBox(
                  height: 25.h,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed('/regist');
                  },
                  child: Text(
                    'Зарегестрироваться',
                    style: TextStyle(
                        color: const Color.fromRGBO(65, 114, 215, 1),
                        fontSize: 20.sp),
                  ),
                ),
                SizedBox(
                  height: 108.h,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: SecondText(
                      name:
                          'При входе и регистрации вы соглашаетесь с Условиями использования и Политикой конфиденциальности',
                      fontSize: 16),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
