import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchArea extends StatelessWidget {
  const SearchArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16.h, right: 16.w, left: 16.w),
      child: TextField(
        textAlign: TextAlign.start,
        style: TextStyle(
          color: Colors.black,
        ),
        decoration: InputDecoration(
          hintText: 'Search...',
          helperStyle: TextStyle(color: Colors.grey.shade600),
          prefixIcon: Icon(Icons.search, color: Colors.grey.shade600, size: 20),
          filled: true,
          fillColor: Color.fromRGBO(37, 41, 53, 1),
          contentPadding: const EdgeInsets.all(8),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade100)),
        ),
      ),
    );
  }
}
