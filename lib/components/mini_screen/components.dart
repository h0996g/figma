import 'package:figma/components/components.dart';
import 'package:flutter/material.dart';

Container navigationBarSmallScreen(
    double iconSize, double fontSize, double mediaWidth, double mediaHeight) {
  double spaceSizedBoxNav = mediaHeight * 0.02;
  return Container(
    color: Colors.white,
    width: (mediaWidth * 0.25) * 0.13,
    // Removed fixed width, as it is now defined in the parent Row
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: spaceSizedBoxNav),
        Expanded(
          child: SizedBox(
            child: ListView(
              children: [
                // SvgPicture.asset(
                //     'assets/icons/L - right side menu button.svg'),

                // SvgPicture.asset('assets/icons/Vector.svg'),
                svgIconNavigationBar(
                    path: 'assets/icons/L - right side menu button1.svg'),
                svgIconNavigationBar(path: 'assets/icons/Vector.svg'),
                svgIconNavigationBar(path: 'assets/icons/Location.svg'),
                svgIconNavigationBar(path: 'assets/icons/clock1.svg'),
                svgIconNavigationBar(path: 'assets/icons/percentage.svg'),
                svgIconNavigationBar(path: 'assets/icons/Users.svg'),
                svgIconNavigationBar(path: 'assets/icons/plate.svg'),
                svgIconNavigationBar(path: 'assets/icons/cooking.svg'),
                svgIconNavigationBar(path: 'assets/icons/edit.svg'),
                svgIconNavigationBar(path: 'assets/icons/print.svg'),
                svgIconNavigationBar(path: 'assets/icons/share.svg'),
              ],
            ),
          ),
        ),
        Column(
          children: [
            // SizedBox(height: 1),

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
