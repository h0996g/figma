import 'package:figma/components/components.dart';
import 'package:figma/const_size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Container navigationBarMainScreen() {
  return Container(
    // color: Colors.white,
    width: (Get.width * 0.75) * 0.08,
    decoration: const BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.black,
          blurRadius: 10,
          offset: Offset(2, 0),
        ),
      ],
    ),
    // Removed fixed width, as it is now defined in the parent Row
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        Expanded(
          child: SizedBox(
            // width: 80,
            child: ListView(
              children: [
                svgIconNavigationBar(
                    path: 'assets/icons/main_screen/Frame 17.svg',
                    fit: BoxFit.cover,
                    height: Get.height * 0.088 - 10,
                    color: Colors.black),
                const SizedBox(height: 20),
                MaterialButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      svgIconNavigationBar2(
                          path: 'assets/icons/main_screen/Vector.svg',
                          color: Colors.black,
                          width: iconSize * 0.8,
                          height: iconSize * 0.8,
                          // iconSize: 40,
                          fit: BoxFit.cover),
                      Text('Orders',
                          style: TextStyle(
                              fontSize: fontSize * 0.8,
                              fontWeight: FontWeight.w600,
                              color: Colors.black)),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                MaterialButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      svgIconNavigationBar2(
                          path: 'assets/icons/main_screen/Vector-1.svg',
                          color: Colors.black,
                          width: iconSize * 0.8,
                          height: iconSize * 0.8,
                          // iconSize: 40,
                          fit: BoxFit.cover),
                      Text('Tables',
                          style: TextStyle(
                              fontSize: fontSize * 0.8,
                              fontWeight: FontWeight.w600,
                              color: Colors.black)),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                MaterialButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      svgIconNavigationBar2(
                          path: 'assets/icons/main_screen/Vector-2.svg',
                          color: Colors.black,
                          width: iconSize * 0.8,
                          height: iconSize * 0.8,
                          // iconSize: 40,
                          fit: BoxFit.cover),
                      Text('Call Center',
                          style: TextStyle(
                              fontSize: fontSize * 0.8,
                              fontWeight: FontWeight.w600,
                              color: Colors.black)),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                MaterialButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      svgIconNavigationBar2(
                        path: 'assets/icons/main_screen/Vector-3.svg',
                        color: Colors.black,
                        width: iconSize * 0.8,
                        height: iconSize * 0.8,
                        // iconSize: 40,
                        // fit: BoxFit.cover
                      ),
                      Text('Delivery',
                          style: TextStyle(
                              fontSize: fontSize * 0.8,
                              fontWeight: FontWeight.w600,
                              color: Colors.black)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Column(
          children: [
            MaterialButton(
              onPressed: () {},
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisSize: MainAxisSize.max,
                children: [
                  svgIconNavigationBar2(
                      path: 'assets/icons/main_screen/Vector4.svg',
                      color: Colors.black,
                      width: iconSize * 0.8,
                      height: iconSize * 0.8,
                      // iconSize: 40,
                      fit: BoxFit.cover),
                  Text('Settings',
                      style: TextStyle(
                          fontSize: fontSize * 0.8,
                          fontWeight: FontWeight.w600,
                          color: Colors.black)),
                ],
              ),
            ),
            const SizedBox(height: 20),
            MaterialButton(
              onPressed: () {},
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisSize: MainAxisSize.max,
                children: [
                  svgIconNavigationBar2(
                      path: 'assets/icons/main_screen/Vector-5.svg',
                      color: Colors.black,
                      width: iconSize * 0.8,
                      height: iconSize * 0.8,
                      // iconSize: 40,
                      fit: BoxFit.cover),
                  Text('Quick End',
                      style: TextStyle(
                          fontSize: fontSize * 0.8,
                          fontWeight: FontWeight.w600,
                          color: Colors.black)),
                ],
              ),
            ),
            const SizedBox(height: 20),
            MaterialButton(
              onPressed: () {},
              child: Column(
                children: [
                  svgIconNavigationBar2(
                      path: 'assets/icons/main_screen/Vector-6.svg',
                      color: Colors.black,
                      width: iconSize * 0.8,
                      height: iconSize * 0.8,
                      // iconSize: 40,
                      fit: BoxFit.cover),
                  Text('Shift Off',
                      style: TextStyle(
                          fontSize: fontSize * 0.8,
                          fontWeight: FontWeight.w600,
                          color: Colors.black)),
                ],
              ),
            ),
            const SizedBox(height: 20),
            MaterialButton(
              onPressed: () {},
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisSize: MainAxisSize.max,
                children: [
                  svgIconNavigationBar2(
                      path: 'assets/icons/main_screen/Vector-7.svg',
                      color: Colors.black,
                      width: iconSize * 0.8,
                      height: iconSize * 0.8,
                      // iconSize: 40,
                      fit: BoxFit.cover),
                  Text('Power Off',
                      style: TextStyle(
                          fontSize: fontSize * 0.8,
                          fontWeight: FontWeight.w600,
                          color: Colors.black)),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
