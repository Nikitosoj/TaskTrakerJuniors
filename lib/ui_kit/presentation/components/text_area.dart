import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextArea extends StatelessWidget {
  const TextArea({super.key, required this.name, required this.controller});
  final TextEditingController controller;
  final String name;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44.h,
      width: 294.w,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: name,
          labelStyle: TextStyle(
              fontSize: 16.sp, color: const Color.fromRGBO(202, 196, 208, 1)),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromRGBO(202, 196, 208, 1)),
            borderRadius: BorderRadius.all(Radius.circular(4)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
            borderRadius: BorderRadius.all(Radius.circular(4)),
          ),
        ),
      ),
    );
  }
}
