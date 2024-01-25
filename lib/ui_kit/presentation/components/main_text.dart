import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainText extends StatelessWidget {
  const MainText(
      {super.key,
      required this.name,
      required this.fontsize,
      required this.textColor});
  final String name;
  final double fontsize;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: TextStyle(fontSize: fontsize.sp, color: textColor),
    );
  }
}
