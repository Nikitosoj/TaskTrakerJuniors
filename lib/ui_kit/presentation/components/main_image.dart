import 'package:flutter/material.dart';

import '../../../resources/resources.dart';

class MainImage extends StatelessWidget {
  const MainImage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
        padding: EdgeInsets.only(
            left: screenSize.width * 0.03,
            right: screenSize.width * 0.03,
            top: screenSize.height * 0.05),
        child: const Image(
          image: AssetImage(Images.main),
        ));
  }
}
