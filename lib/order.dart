import 'dart:ui';

import 'package:figma/components/mini_screen/components.dart';
import 'package:figma/components/size.dart';
import 'package:figma/controllers/main_controller.dart';
import 'package:figma/screens/big_screen.dart';
import 'package:figma/screens/mini_screen.dart';
import 'package:figma/widget/big_screen/navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class FigmaPage extends StatelessWidget {
  const FigmaPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(MainController());
    double mediaHeight = MediaQuery.of(context).size.height;
    // double mediaWidth = MediaQuery.of(context).size.width;
    // double screenSizeWidthOnly1 = MediaQuery.of(context).size.width * 0.3 - 40;
    late int oldIndex;

    return GetX<MainController>(
      init: MainController(),
      builder: (DisposableInterface controller) {
        if (Get.find<MainController>().selectedIndex.value != 1) {
          oldIndex = Get.find<MainController>().selectedIndex.value;
        }
        return Row(
          children: [
            SizedBox(
              width: MediaQueryValues(context).bigScreenWidth,
              child: bigScreen(),
            ),
            Stack(
              children: [
                SizedBox(
                  width: MediaQueryValues(context).miniScreenWidth,
                  child: smallScreen(MediaQueryValues(context).miniScreenWidth,
                      MediaQueryValues(context).height, context),
                ),
                if (Get.find<MainController>().selectedIndex.value == 1)
                  Center(
                    child: ClipRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                        child: Container(
                          alignment: Alignment.center,
                          width: MediaQueryValues(context).miniScreenWidth,
                          height: MediaQueryValues(context).height,

                          // ignore: prefer_const_constructors
                          child: Stack(
                            clipBehavior: Clip.none,
                            alignment: Alignment.topCenter,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white,
                                ),
                                width:
                                    MediaQueryValues(context).miniScreenWidth *
                                        0.8,
                                height: MediaQueryValues(context).height * 0.35,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: MediaQueryValues(context)
                                              .miniScreenWidth *
                                          0.8 *
                                          0.05,
                                      vertical: MediaQueryValues(context)
                                              .miniScreenWidth *
                                          0.8 *
                                          0.05),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      const Expanded(
                                          flex: 8, child: SizedBox()),
                                      Expanded(
                                        flex: 5,
                                        child: FittedBox(
                                          child: DefaultTextStyle(
                                            style: TextStyle(
                                                fontSize:
                                                    MediaQueryValues(context)
                                                            .miniScreenWidth *
                                                        0.8 *
                                                        0.15,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black),
                                            child: const Text(
                                              '15:16',
                                            ),
                                          ),
                                        ),
                                      ),
                                      // SizedBox(
                                      //   height:
                                      //       MediaQueryValues(context).height *
                                      //           0.35 *
                                      //           0.05,
                                      // ),
                                      const Expanded(
                                          flex: 2, child: SizedBox()),

                                      Expanded(
                                        flex: 3,
                                        child: FittedBox(
                                          child: DefaultTextStyle(
                                            style: TextStyle(
                                                fontSize:
                                                    MediaQueryValues(context)
                                                            .miniScreenWidth *
                                                        0.8 *
                                                        0.15,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black),
                                            child: const Text(
                                              'Abdessamed Bouazza',
                                            ),
                                          ),
                                        ),
                                      ),
                                      // SizedBox(
                                      //   height:
                                      //       MediaQueryValues(context).height *
                                      //           0.35 *
                                      //           0.2,
                                      // ),
                                      const Expanded(
                                          flex: 4, child: SizedBox()),
                                      Expanded(
                                        flex: 5,
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Container(
                                                height:
                                                    MediaQueryValues(context)
                                                            .miniScreenWidth *
                                                        0.8 *
                                                        0.15,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.shade300,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          3), // Optional: Add rounded corners
                                                ),
                                                child: MaterialButton(
                                                  onPressed: () {
                                                    Get.find<MainController>()
                                                        .selectedIndex
                                                        .value = oldIndex;
                                                  },
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Icon(
                                                        Icons
                                                            .arrow_back_ios_rounded,
                                                        size: MediaQueryValues(
                                                                    context)
                                                                .miniScreenWidth *
                                                            0.8 *
                                                            0.05,
                                                        color: Colors.black,
                                                      ),
                                                      SizedBox(
                                                        width: MediaQueryValues(
                                                                    context)
                                                                .miniScreenWidth *
                                                            0.8 *
                                                            0.02,
                                                      ),
                                                      FittedBox(
                                                        child: DefaultTextStyle(
                                                          style: TextStyle(
                                                              fontSize: MediaQueryValues(
                                                                          context)
                                                                      .miniScreenWidth *
                                                                  0.8 *
                                                                  0.05,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color:
                                                                  Colors.black),
                                                          child: const Text(
                                                            'Return',
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: MediaQueryValues(context)
                                                      .miniScreenWidth *
                                                  0.8 *
                                                  0.05,
                                            ),
                                            Expanded(
                                                child: Container(
                                              height: MediaQueryValues(context)
                                                      .miniScreenWidth *
                                                  0.8 *
                                                  0.15,
                                              decoration: BoxDecoration(
                                                color: const Color.fromARGB(
                                                    255, 219, 248, 231),

                                                borderRadius: BorderRadius.circular(
                                                    3), // Optional: Add rounded corners
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  // Icon(
                                                  //   Icons.lock_outline_rounded,
                                                  //   size: MediaQueryValues(
                                                  //               context)
                                                  //           .miniScreenWidth *
                                                  //       0.8 *
                                                  //       0.06,
                                                  //   color: const Color.fromRGBO(
                                                  //       33, 150, 83, 1),
                                                  // ),
                                                  SvgPicture.asset(
                                                    'assets/icons/mini_screen/main_screen/lock.svg',
                                                    width: MediaQueryValues(
                                                                context)
                                                            .miniScreenWidth *
                                                        0.8 *
                                                        0.05,
                                                  ),
                                                  SizedBox(
                                                    width: MediaQueryValues(
                                                                context)
                                                            .miniScreenWidth *
                                                        0.8 *
                                                        0.02,
                                                  ),
                                                  FittedBox(
                                                    child: DefaultTextStyle(
                                                      style: TextStyle(
                                                          fontSize: MediaQueryValues(
                                                                      context)
                                                                  .miniScreenWidth *
                                                              0.8 *
                                                              0.05,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: const Color
                                                              .fromRGBO(
                                                              33, 150, 83, 1)),
                                                      child: const Text(
                                                        'Unlock',
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                  top: -mediaHeight * 0.35 * 0.15,
                                  child: CircleAvatar(
                                    maxRadius: mediaHeight * 0.35 * 0.15,
                                    backgroundColor: Colors.white,
                                    child: CircleAvatar(
                                      maxRadius: mediaHeight * 0.35 * 0.13,
                                      backgroundColor: const Color.fromRGBO(
                                          235, 87, 87, 0.15),
                                      // child: const Icon(
                                      //   Icons.lock_outline_rounded,
                                      //   color: Color.fromRGBO(235, 87, 87, 1),
                                      // ),
                                      child: SvgPicture.asset(
                                          'assets/icons/mini_screen/main_screen/lock1.svg',
                                          width: MediaQueryValues(context)
                                                  .miniScreenWidth *
                                              0.8 *
                                              0.09),
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
              ],
            ),
          ],
        );
      },
    );
  }

  Row smallScreen(
      double sizeSmallScreenWidth, double sizeSmallScreenHeight, context) {
    return Row(
      children: [
        const Expanded(
          child: MiniScreen(),
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
    NavigationBarMainScreen(),
    Expanded(
      child: BigScreen(),
    ),
  ]);
}
