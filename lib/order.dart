import 'package:figma/components/mini_screen/components.dart';
import 'package:figma/controllers/main_controller.dart';
import 'package:figma/screens/big_screen.dart';
import 'package:figma/screens/mini_screen.dart';
import 'package:figma/widget/big_screen/app_bar.dart';
import 'package:figma/widget/big_screen/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FigmaPage extends StatelessWidget {
  const FigmaPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(MainController());
    print(Get.width);
    // print(MediaQuery.sizeOf(context).width);
    return Row(
      children: [
        // This Container will take 1/4 of the screen width

        // This Expanded will take the remaining space
        Expanded(
          child: bigScreen(),
        ),
        SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.25,
          child:
              smallScreen(MediaQuery.sizeOf(context).width * 0.25, Get.height),
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
        const VerticalDivider(
          width: 0.5,
          // thickness: 1.0,
          color: Colors.grey,
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
