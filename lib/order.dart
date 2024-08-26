import 'package:figma/components/components.dart';
import 'package:figma/components/mini_screen/components.dart';
import 'package:figma/const_size.dart';
import 'package:figma/screens/big_screen.dart';
import 'package:figma/screens/mini_screen.dart';
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
        const Expanded(
          child: MainContent(),
        ),
        SizedBox(
          width: Get.width * 0.25,
          child: smallScreen(Get.width * 0.25, Get.height),
        ),
      ],
    );
  }

  Widget smallScreen(
      double sizeSmallScreenWidth, double sizeSmallScreenHeight) {
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

class MainContent extends StatelessWidget {
  const MainContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      navigationBarMainScreen(),
      const Expanded(
        child: MainScreen(),
      ),
    ]);
  }

  Container navigationBarMainScreen() {
    return Container(
      // color: Colors.white,
      width: (Get.width * 0.75) * 0.08,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black, // Adjust the shadow color
            blurRadius: 10, // Spread radius of the shadow
            offset: Offset(2, 0), // Move the shadow horizontally
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
}
