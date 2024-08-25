import 'package:figma/components/components.dart';
import 'package:figma/const_size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Container navigationBarSmallScreen() {
  return Container(
    color: Colors.white,
    width: (Get.width * 0.25) * 0.1,
    // Removed fixed width, as it is now defined in the parent Row
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        Expanded(
          child: SizedBox(
            width: 40,
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
            const SizedBox(height: 5),

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
            const SizedBox(height: 5),
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
            const SizedBox(height: 5),

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
                path: 'assets/icons/L - right side menu button-1.svg'),
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
