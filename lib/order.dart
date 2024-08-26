import 'package:figma/components/mini_screen/components.dart';
import 'package:figma/controllers/main_controller.dart';
import 'package:figma/screens/big_screen.dart';
import 'package:figma/screens/mini_screen.dart';
import 'package:figma/widget/big_screen/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FigmaPage extends StatelessWidget {
  const FigmaPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(MainController());
    double mediaHeight = MediaQuery.of(context).size.height;
    double mediaWidth = MediaQuery.of(context).size.width;
    double screenSizeWidthOnly1 = MediaQuery.of(context).size.width * 0.3 - 40;

    double iconSize = screenSizeWidthOnly1 * 0.07;
    double containerHeight = MediaQuery.of(context).size.height * 0.09 * 0.8;
    double fontSize = screenSizeWidthOnly1 * 0.04;

    return Row(
      children: [
        // This Container will take 1/4 of the screen width

        // This Expanded will take the remaining space
        Expanded(
          child: bigScreen(iconSize, fontSize, mediaWidth, mediaHeight),
        ),
        SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.25,
          child: smallScreen(
              MediaQuery.sizeOf(context).width * 0.25,
              MediaQuery.sizeOf(context).height,
              iconSize,
              fontSize,
              MediaQuery.sizeOf(context).width,
              mediaHeight),
        ),
      ],
    );
  }

  Row smallScreen(double sizeSmallScreenWidth, double sizeSmallScreenHeight,
      double iconSize, double fontSize, double mediaWidth, double mediaHeight) {
    return Row(
      children: [
        Expanded(
          // flex: 8,
          child: MiniScreen(
            sizeSmallScreenWidth: sizeSmallScreenWidth,
            sizeSmallScreenHeight: sizeSmallScreenHeight,
          ),
        ),
        const VerticalDivider(
          width: 0.5,
          // thickness: 1.0,
          color: Colors.grey,
        ),
        navigationBarSmallScreen(iconSize, fontSize, mediaWidth, mediaHeight),
      ],
    );
  }
}

Row bigScreen(
    double iconSize, double fontSize, double mediaWidth, double mediaHeight) {
  return Row(children: [
    navigationBarMainScreen(iconSize, fontSize, mediaWidth, mediaHeight),
    const Expanded(
      child: BigScreen(),
    ),
  ]);
}
