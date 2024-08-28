import 'package:figma/components/components.dart';
import 'package:figma/components/size.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NavigationBarSmallScreen extends StatelessWidget {
  const NavigationBarSmallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double iconSizeWidth = MediaQueryValues(context).iconSizeWidth;
    double iconSizeHeight = MediaQueryValues(context).iconSizeHeight;
    double fontSize = MediaQueryValues(context).fontSize;
    double padding = MediaQueryValues(context).miniScreenSpaceBetweenNav * 0.5;
    // double firstplace = MediaQueryValues(context).miniScreenHeight * 0.61;
    // double secondplace = MediaQueryValues(context).miniScreenHeight * 0.36;
    return Container(
      color: Colors.white,
      width: MediaQueryValues(context).miniScreenNavigationBarSmallwidth,
      height: MediaQueryValues(context).miniScreenHeight,
      // Removed fixed width, as it is now defined in the parent Row
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: MediaQueryValues(context).miniScreenSpaceBetweenNav),
          svgIconNavigationBar(
              path: 'assets/icons/mini_screen/navside/bill.svg',
              width: iconSizeWidth,
              height: iconSizeHeight,
              paddingHeight: padding),
          svgIconNavigationBar(
              path: 'assets/icons/mini_screen/navside/user.svg',
              width: iconSizeWidth,
              height: iconSizeHeight,
              paddingHeight: padding),
          svgIconNavigationBar(
              path: 'assets/icons/mini_screen/navside/Location.svg',
              width: iconSizeWidth,
              height: iconSizeHeight,
              paddingHeight: padding),
          svgIconNavigationBar(
              path: 'assets/icons/mini_screen/navside/clock.svg',
              width: iconSizeWidth,
              height: iconSizeHeight,
              paddingHeight: padding),
          svgIconNavigationBar(
              path: 'assets/icons/mini_screen/navside/persentage.svg',
              width: iconSizeWidth,
              height: iconSizeHeight,
              paddingHeight: padding),
          svgIconNavigationBar(
              path: 'assets/icons/mini_screen/navside/Users.svg',
              width: iconSizeWidth,
              height: iconSizeHeight,
              paddingHeight: padding),
          svgIconNavigationBar(
              path: 'assets/icons/mini_screen/navside/plate.svg',
              width: iconSizeWidth,
              height: iconSizeHeight,
              paddingHeight: padding),
          svgIconNavigationBar(
              path: 'assets/icons/mini_screen/navside/cooking.svg',
              width: iconSizeWidth,
              height: iconSizeHeight,
              paddingHeight: padding),
          svgIconNavigationBar(
              path: 'assets/icons/mini_screen/navside/Edit.svg',
              width: iconSizeWidth,
              height: iconSizeHeight,
              paddingHeight: padding),
          svgIconNavigationBar(
              path: 'assets/icons/mini_screen/navside/print.svg',
              width: iconSizeWidth,
              height: iconSizeHeight,
              paddingHeight: padding),
          svgIconNavigationBar(
              path: 'assets/icons/mini_screen/navside/share.svg',
              width: iconSizeWidth,
              height: iconSizeHeight,
              paddingHeight: padding),
          const Spacer(),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // Container(
              //   height: iconSizeWidth,
              //   width: iconSizeWidth,
              //   decoration: BoxDecoration(
              //     color: Colors.grey.shade100,
              //     borderRadius: BorderRadius.circular(0.4),
              //   ),
              //   child: Center(
              //     child: Text(
              //       '1',
              //       style: TextStyle(
              //           fontSize: fontSize,
              //           fontWeight: FontWeight.bold,
              //           color: Colors.black),
              //     ),
              //   ),
              // ),

              // svgIconNavigationBar(
              //     path: 'assets/icons/mini_screen/navside/Frame50.svg',
              //     width: iconSizeWidth,
              //     height: iconSizeWidth,
              //     // paddingHeight: padding,
              //     ischangecolor: false),
              // svgIconNavigationBar(
              //     path: 'assets/icons/mini_screen/navside/Frame51.svg',
              //     width: iconSizeWidth,
              //     height: iconSizeWidth,
              //     paddingHeight: padding,
              //     ischangecolor: false),
              // svgIconNavigationBar(
              //     path: 'assets/icons/mini_screen/navside/Frame47.svg',
              //     width: iconSizeWidth,
              //     height: iconSizeWidth,
              //     // paddingHeight: padding,
              //     ischangecolor: false),

              Container(
                  height: iconSizeHeight * 1.9,
                  width: iconSizeWidth,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(1.5),
                  ),
                  margin: EdgeInsets.symmetric(
                    vertical: padding,
                    horizontal: MediaQueryValues(context)
                            .miniScreenNavigationBarSmallwidth *
                        0.05,
                  ),
                  child: Center(
                    child: Text(
                      '1',
                      style: TextStyle(
                          fontSize: fontSize * 0.1,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  )),

              Container(
                  height: iconSizeHeight * 1.9,
                  width: iconSizeWidth,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(1.5),
                  ),
                  margin: EdgeInsets.symmetric(
                    // vertical: padding,
                    horizontal: MediaQueryValues(context)
                            .miniScreenNavigationBarSmallwidth *
                        0.05,
                  ),
                  child: Center(
                    child: Text(
                      '2',
                      style: TextStyle(
                          fontSize: fontSize * 0.1,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  )),

              Container(
                  height: iconSizeHeight * 1.9,
                  width: iconSizeWidth,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(1.5),
                  ),
                  margin: EdgeInsets.symmetric(
                    vertical: padding,
                    horizontal: MediaQueryValues(context)
                            .miniScreenNavigationBarSmallwidth *
                        0.05,
                  ),
                  child: Center(
                    child: Text(
                      '3',
                      style: TextStyle(
                          fontSize: fontSize * 0.1,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  )),
              SizedBox(
                height: padding,
              ),
              svgIconNavigationBar(
                  path: 'assets/icons/mini_screen/navside/fast.svg',
                  width: iconSizeWidth,
                  height: iconSizeHeight,
                  paddingHeight: padding),
              svgIconNavigationBar(
                  path: 'assets/icons/mini_screen/navside/Lock.svg',
                  width: iconSizeWidth,
                  height: iconSizeHeight,
                  paddingHeight: padding),
              svgIconNavigationBar(
                  path: 'assets/icons/mini_screen/navside/wifi.svg',
                  width: iconSizeWidth,
                  height: iconSizeHeight,
                  paddingHeight: padding),
            ],
          )
        ],
      ),
    );
  }
}

// Container navigationBarSmallScreen(
//     double iconSize, double fontSize, double mediaWidth, double mediaHeight) {
//   double spaceSizedBoxNav = mediaHeight * 0.015;
//   return 
//   Container(
//     color: Colors.white,
//     width: (mediaWidth * 0.25) * 0.2,
//     // Removed fixed width, as it is now defined in the parent Row
//     child: Column(
//       mainAxisAlignment: MainAxisAlignment.start,
//       children: [
//         SizedBox(height: spaceSizedBoxNav),
//         Expanded(
//           child: SizedBox(
//             child: ListView(
//               children: [
//                 svgIconNavigationBar(
//                     path: 'assets/icons/L - right side menu button1.svg',
//                     width: iconSize,
//                     height: iconSize),
//                 svgIconNavigationBar(
//                     path: 'assets/icons/Vector.svg',
//                     width: iconSize,
//                     height: iconSize),
//                 svgIconNavigationBar(
//                     path: 'assets/icons/Location.svg',
//                     width: iconSize,
//                     height: iconSize),
//                 svgIconNavigationBar(
//                     path: 'assets/icons/clock1.svg',
//                     width: iconSize,
//                     height: iconSize),
//                 svgIconNavigationBar(
//                     path: 'assets/icons/percentage.svg',
//                     width: iconSize,
//                     height: iconSize),
//                 svgIconNavigationBar(
//                     path: 'assets/icons/Users.svg',
//                     width: iconSize,
//                     height: iconSize),
//                 svgIconNavigationBar(
//                     path: 'assets/icons/plate.svg',
//                     width: iconSize,
//                     height: iconSize),
//                 svgIconNavigationBar(
//                     path: 'assets/icons/cooking.svg',
//                     width: iconSize,
//                     height: iconSize),
//                 svgIconNavigationBar(
//                     path: 'assets/icons/edit.svg',
//                     width: iconSize,
//                     height: iconSize),
//                 svgIconNavigationBar(
//                     path: 'assets/icons/print.svg',
//                     width: iconSize,
//                     height: iconSize),
//                 svgIconNavigationBar(
//                     path: 'assets/icons/share.svg',
//                     width: iconSize,
//                     height: iconSize),
//               ],
//             ),
//           ),
//         ),
//         Column(
//           children: [
//             Container(
//               color: const Color(0xffF2F2F2),
//               height: 35,
//               width: 35,
//               // color: Colors.grey,
//               child: MaterialButton(
//                 onPressed: () {},
//                 child: Center(
//                   child: Text('1',
//                       style: TextStyle(
//                           fontSize: fontSize,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.black)),
//                 ),
//               ),
//             ),
//             SizedBox(height: spaceSizedBoxNav),
//             Container(
//               color: const Color(0xffF2F2F2),
//               height: 35,
//               width: 35,
//               // color: Colors.grey,
//               child: MaterialButton(
//                 onPressed: () {},
//                 child: Center(
//                   child: Text('2',
//                       style: TextStyle(
//                           fontSize: fontSize,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.black)),
//                 ),
//               ),
//             ),
//             SizedBox(height: spaceSizedBoxNav),

//             Container(
//               color: const Color(0xffF2F2F2),
//               height: 35,
//               width: 35,
//               // color: Colors.grey,
//               child: MaterialButton(
//                 onPressed: () {},
//                 child: Center(
//                   child: Text('3',
//                       style: TextStyle(
//                           fontSize: fontSize,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.black)),
//                 ),
//               ),
//             ),

//             svgIconNavigationBar(
//               path: 'assets/icons/mini_screen/fast.svg',
//             ),
//             svgIconNavigationBar(path: 'assets/icons/Lock.svg'),
//             svgIconNavigationBar(path: 'assets/icons/wifi.svg'),

//             // SvgPicture.asset('assets/icons/L - right side menu button-1.svg'),
//             // SvgPicture.asset('assets/icons/Lock.svg'),
//             // SvgPicture.asset('assets/icons/wifi.svg'),
//           ],
//         ),
//       ],
//     ),
//   );

// }
