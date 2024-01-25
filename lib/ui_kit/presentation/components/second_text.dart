import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SecondText extends StatelessWidget {
  const SecondText({super.key, required this.name, required this.fontSize});
  final String name;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: TextStyle(
          fontSize: fontSize.sp,
          fontWeight: FontWeight.w500,
          color: const Color.fromRGBO(255, 255, 255, 0.5)),
    );
  }
}
