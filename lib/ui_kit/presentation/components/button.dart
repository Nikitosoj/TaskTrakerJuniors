import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Button extends StatelessWidget {
  const Button({super.key, required this.name, required this.onPress});
  final String name;
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SizedBox(
      width: screenSize.width * 0.35,
      height: screenSize.height * 0.05,
      child: ElevatedButton(
        onPressed: onPress,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
        ),
        child: Text(
          name,
          softWrap: false,
          style: TextStyle(
            fontSize: 14.sp, // ??? менять от размера устройства
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
