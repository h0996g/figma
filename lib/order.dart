import 'package:figma/components/mini_screen/components.dart';
import 'package:figma/screens/big_screen.dart';
import 'package:figma/screens/mini_screen.dart';
import 'package:figma/widget/big_screen/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FigmaPage extends StatelessWidget {
  const FigmaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // This Container will take 1/4 of the screen width

        // This Expanded will take the remaining space
        Expanded(
          child: bigScreen(),
        ),
        SizedBox(
          width: Get.width * 0.25,
          child: smallScreen(Get.width * 0.25, Get.height),
        ),
      ],
    );
  }

  Row smallScreen(double sizeSmallScreenWidth, double sizeSmallScreenHeight) {
    return Row(
      children: [
        Expanded(
          // flex: 8,
          child: MiniScreen(
            sizeSmallScreenWidth: sizeSmallScreenWidth,
            sizeSmallScreenHeight: sizeSmallScreenHeight,
          ),
        ),
        navigationBarSmallScreen(),
      ],
    );
  }
}

Row bigScreen() {
  return Row(children: [
    navigationBarMainScreen(),
    const Expanded(
      child: BigScreen(),
    ),
  ]);
}
