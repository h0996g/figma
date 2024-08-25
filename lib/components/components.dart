import 'package:figma/const_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

MaterialButton svgIconNavigationBar(
    {double? width,
    double? height,
    Color color = Colors.grey,
    required String path,
    BoxFit fit = BoxFit.contain}) {
  return MaterialButton(
    onPressed: () {},
    child: SvgPicture.asset(
      path,
      height: height,
      width: width,
      fit: fit,
      color: color,
    ),
  );
}

SvgPicture svgIconNavigationBar2(
    {double? width,
    double? height,
    Color color = Colors.grey,
    required String path,
    BoxFit fit = BoxFit.contain}) {
  return SvgPicture.asset(
    path,
    height: height,
    width: width,
    fit: fit,
    color: color,
  );
}

Row svgIconNavigationBar3(
    {double? width,
    double? height,
    Color color = Colors.grey,
    required String path1,
    required String path2,
    BoxFit fit = BoxFit.contain}) {
  return Row(
    children: [
      SvgPicture.asset(
        path1,
        height: height,
        width: width,
        fit: fit,
        color: color,
      ),
      SvgPicture.asset(
        path2,
        height: height,
        width: width,
        fit: fit,
        color: color,
      ),
    ],
  );
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(
        (Get.width * 0.7) * 0.1,
      );

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: Container(
        color: Colors.white,
        child: SafeArea(
          child: Center(
            child: SizedBox(
              width: Get.width *
                  0.7, // Adjust the width to control the horizontal space
              // height: 40, // Height of the app bar content
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  // The following `MaterialButton` widgets are spaced equally

                  MaterialButton(
                    onPressed: () {},
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        svgIconNavigationBar2(
                          path: 'assets/icons/main_screen/Vector-9.svg',
                          color: Colors.black,
                          width: iconSize * 0.8,
                          height: iconSize * 0.8,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          'Categories',
                          style: TextStyle(
                            fontSize: fontSize * 0.8,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),

                  MaterialButton(
                    onPressed: () {},
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        svgIconNavigationBar2(
                          path: 'assets/icons/main_screen/Vector-10.svg',
                          color: Colors.black,
                          width: iconSize * 0.8,
                          height: iconSize * 0.8,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          'Food',
                          style: TextStyle(
                            fontSize: fontSize * 0.8,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),

                  MaterialButton(
                    onPressed: () {},
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        svgIconNavigationBar2(
                          path: 'assets/icons/main_screen/Vector-11.svg',
                          color: Colors.black,
                          width: iconSize * 0.8,
                          height: iconSize * 0.8,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          'Favoirites',
                          style: TextStyle(
                            fontSize: fontSize * 0.8,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {},
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        svgIconNavigationBar2(
                          path: 'assets/icons/main_screen/Juice.svg',
                          color: Colors.black,
                          width: iconSize * 0.8,
                          height: iconSize * 0.8,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          'Drinks',
                          style: TextStyle(
                            fontSize: fontSize * 0.8,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),

                  MaterialButton(
                    onPressed: () {},
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        svgIconNavigationBar2(
                          path: 'assets/icons/main_screen/Vector-13.svg',
                          // path2: 'assets/icons/main_screen/Vector-1333.svg',
                          color: Colors.black,
                          width: iconSize * 0.8,
                          height: iconSize * 0.8,
                        ),
                        Text(
                          'Side Items',
                          style: TextStyle(
                            fontSize: fontSize * 0.8,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
