import 'package:figma/components/mini_screen/components.dart';
import 'package:figma/components/size.dart';
import 'package:figma/controllers/main_controller.dart';
import 'package:figma/screens/big_screen.dart';
import 'package:figma/screens/mini_screen.dart';
import 'package:figma/widget/big_screen/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class FigmaPage extends StatelessWidget {
  const FigmaPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(MainController());
    double mediaHeight = MediaQuery.of(context).size.height;
    // double mediaWidth = MediaQuery.of(context).size.width;
    // double screenSizeWidthOnly1 = MediaQuery.of(context).size.width * 0.3 - 40;

    return Row(
      children: [
        SizedBox(
          width: MediaQueryValues(context).bigScreenWidth,
          child: bigScreen(),
        ),
        SizedBox(
          width: MediaQueryValues(context).miniScreenWidth,
          child: smallScreen(
              MediaQueryValues(context).width * 0.25,
              MediaQueryValues(context).height,
              MediaQuery.sizeOf(context).width,
              mediaHeight,
              context),
        ),
      ],
    );
  }

  Row smallScreen(double sizeSmallScreenWidth, double sizeSmallScreenHeight,
      double mediaWidth, double mediaHeight, context) {
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
        SizedBox(
            width: MediaQueryValues(context).miniScreenNavigationBarSmallwidth,
            child: const NavigationBarSmallScreen()),
      ],
    );
  }
}

Row bigScreen() {
  return const Row(children: [
    // NavigationBarMainScreen(),
    Expanded(
      child: BigScreen(),
    ),
  ]);
}
