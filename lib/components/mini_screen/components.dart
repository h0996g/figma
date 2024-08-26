import 'package:figma/components/components.dart';
import 'package:flutter/material.dart';

Container navigationBarSmallScreen(
    double iconSize, double fontSize, double mediaWidth, double mediaHeight) {
  double spaceSizedBoxNav = mediaHeight * 0.015;
  return Container(
    color: Colors.white,
    width: (mediaWidth * 0.25) * 0.2,
    // Removed fixed width, as it is now defined in the parent Row
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: spaceSizedBoxNav),
        Expanded(
          child: SizedBox(
            child: ListView(
              children: [
                svgIconNavigationBar(
                    path: 'assets/icons/L - right side menu button1.svg',
                    width: iconSize,
                    height: iconSize),
                svgIconNavigationBar(
                    path: 'assets/icons/Vector.svg',
                    width: iconSize,
                    height: iconSize),
                svgIconNavigationBar(
                    path: 'assets/icons/Location.svg',
                    width: iconSize,
                    height: iconSize),
                svgIconNavigationBar(
                    path: 'assets/icons/clock1.svg',
                    width: iconSize,
                    height: iconSize),
                svgIconNavigationBar(
                    path: 'assets/icons/percentage.svg',
                    width: iconSize,
                    height: iconSize),
                svgIconNavigationBar(
                    path: 'assets/icons/Users.svg',
                    width: iconSize,
                    height: iconSize),
                svgIconNavigationBar(
                    path: 'assets/icons/plate.svg',
                    width: iconSize,
                    height: iconSize),
                svgIconNavigationBar(
                    path: 'assets/icons/cooking.svg',
                    width: iconSize,
                    height: iconSize),
                svgIconNavigationBar(
                    path: 'assets/icons/edit.svg',
                    width: iconSize,
                    height: iconSize),
                svgIconNavigationBar(
                    path: 'assets/icons/print.svg',
                    width: iconSize,
                    height: iconSize),
                svgIconNavigationBar(
                    path: 'assets/icons/share.svg',
                    width: iconSize,
                    height: iconSize),
              ],
            ),
          ),
        ),
        Column(
          children: [
            Container(
              color: const Color(0xffF2F2F2),
              height: 35,
              width: 35,
              // color: Colors.grey,
              child: MaterialButton(
                onPressed: () {},
                child: Center(
                  child: Text('1',
                      style: TextStyle(
                          fontSize: fontSize,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                ),
              ),
            ),
            SizedBox(height: spaceSizedBoxNav),
            Container(
              color: const Color(0xffF2F2F2),
              height: 35,
              width: 35,
              // color: Colors.grey,
              child: MaterialButton(
                onPressed: () {},
                child: Center(
                  child: Text('2',
                      style: TextStyle(
                          fontSize: fontSize,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                ),
              ),
            ),
            SizedBox(height: spaceSizedBoxNav),

            Container(
              color: const Color(0xffF2F2F2),
              height: 35,
              width: 35,
              // color: Colors.grey,
              child: MaterialButton(
                onPressed: () {},
                child: Center(
                  child: Text('3',
                      style: TextStyle(
                          fontSize: fontSize,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                ),
              ),
            ),

            svgIconNavigationBar(
              path: 'assets/icons/mini_screen/fast.svg',
            ),
            svgIconNavigationBar(path: 'assets/icons/Lock.svg'),
            svgIconNavigationBar(path: 'assets/icons/wifi.svg'),

            // SvgPicture.asset('assets/icons/L - right side menu button-1.svg'),
            // SvgPicture.asset('assets/icons/Lock.svg'),
            // SvgPicture.asset('assets/icons/wifi.svg'),
          ],
        ),
      ],
    ),
  );
}
