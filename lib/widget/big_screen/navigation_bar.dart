import 'package:figma/components/components.dart';
import 'package:figma/components/size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NavigationBarMainScreen extends StatelessWidget {
  const NavigationBarMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double navigationBarBigScreenwidth =
        MediaQueryValues(context).navigationBarBigScreenwidth;
    double height = MediaQueryValues(context).height;
    double iconHeight = height * 0.08;
    double iconWidth = navigationBarBigScreenwidth * 0.69;

    return Container(
      width: navigationBarBigScreenwidth,
      height: MediaQueryValues(context).height,
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
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQueryValues(context).miniScreenSpaceBetweenNav * 0.3,
          ),
          // const SizedBox(height: 10),
          svgIconNavigationBar(
              path: 'assets/icons/main_screen/Frame 17.svg',
              fit: BoxFit.cover,
              height: iconHeight,
              width: iconWidth,
              color: Colors.black),
          SizedBox(
            height: MediaQueryValues(context).miniScreenSpaceBetweenNav,
          ),

          reightButtonBigScreen(
              iconHeight: iconHeight,
              iconWidth: iconWidth,
              height: height,
              path: 'assets/icons/main_screen/Vector.svg',
              text: 'Orders'),
          SizedBox(
            height: MediaQueryValues(context).miniScreenSpaceBetweenNav * 2,
          ),

          reightButtonBigScreen(
              iconHeight: iconHeight,
              iconWidth: iconWidth,
              height: height,
              path: 'assets/icons/main_screen/Vector-1.svg',
              text: 'Tables'),

          SizedBox(
            height: MediaQueryValues(context).miniScreenSpaceBetweenNav * 2,
          ),

          reightButtonBigScreen(
              iconHeight: iconHeight,
              iconWidth: iconWidth,
              height: height,
              path: 'assets/icons/main_screen/Vector-2.svg',
              text: 'Call Center'),
          SizedBox(
            height: MediaQueryValues(context).miniScreenSpaceBetweenNav * 2,
          ),

          reightButtonBigScreen(
              iconHeight: iconHeight,
              iconWidth: iconWidth,
              height: height,
              path: 'assets/icons/main_screen/Vector-3.svg',
              text: 'Delivery'),

          const Spacer(),
          reightButtonBigScreen(
              iconHeight: iconHeight,
              iconWidth: iconWidth,
              height: height,
              path: 'assets/icons/main_screen/Vector4.svg',
              text: 'Settings'),
          SizedBox(
            height: MediaQueryValues(context).miniScreenSpaceBetweenNav * 2,
          ),
          reightButtonBigScreen(
              iconHeight: iconHeight,
              iconWidth: iconWidth,
              height: height,
              path: 'assets/icons/main_screen/Vector-5.svg',
              text: 'Quick End'),
          SizedBox(
            height: MediaQueryValues(context).miniScreenSpaceBetweenNav * 2,
          ),
          reightButtonBigScreen(
              iconHeight: iconHeight,
              iconWidth: iconWidth,
              height: height,
              path: 'assets/icons/main_screen/Vector-6.svg',
              text: 'Shift Off'),
          SizedBox(
            height: MediaQueryValues(context).miniScreenSpaceBetweenNav * 2,
          ),
          reightButtonBigScreen(
              iconHeight: iconHeight,
              iconWidth: iconWidth,
              height: height,
              path: 'assets/icons/main_screen/Vector-7.svg',
              text: 'Power Off'),
          SizedBox(
            height: MediaQueryValues(context).miniScreenSpaceBetweenNav * 2,
          ),

          // Expanded(
          //   flex: 2,
          //   child: ListView(
          //     shrinkWrap: true,
          //     padding: EdgeInsets.zero,
          //     children: [
          //       MaterialButton(
          //         onPressed: () {},
          //         child: Column(
          //           children: [
          //             svgIconNavigationBar2(
          //               path: 'assets/icons/main_screen/Vector4.svg',
          //               color: Colors.black,
          //               width: MediaQueryValues(context).iconSizeWidth,
          //               height: MediaQueryValues(context).iconSizeWidth,
          //               fit: BoxFit.cover,
          //             ),
          //             Text(
          //               'Settings',
          //               textAlign: TextAlign.center,
          //               style: TextStyle(
          //                 fontSize: MediaQueryValues(context).fontSize,
          //                 fontWeight: FontWeight.w600,
          //                 color: Colors.black,
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          //       const SizedBox(height: 20),
          //       MaterialButton(
          //         onPressed: () {},
          //         child: Column(
          //           children: [
          //             svgIconNavigationBar2(
          //               path: 'assets/icons/main_screen/Vector-5.svg',
          //               color: Colors.black,
          //               width: MediaQueryValues(context).iconSizeWidth,
          //               height: MediaQueryValues(context).iconSizeWidth,
          //               fit: BoxFit.cover,
          //             ),
          //             Text(
          //               'Quick End',
          //               textAlign: TextAlign.center,
          //               style: TextStyle(
          //                 fontSize: MediaQueryValues(context).fontSize,
          //                 fontWeight: FontWeight.w600,
          //                 color: Colors.black,
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          //       const SizedBox(height: 20),
          //       MaterialButton(
          //         onPressed: () {},
          //         child: Column(
          //           children: [
          //             svgIconNavigationBar2(
          //               path: 'assets/icons/main_screen/Vector-6.svg',
          //               color: Colors.black,
          //               width: MediaQueryValues(context).iconSizeWidth,
          //               height: MediaQueryValues(context).iconSizeWidth,
          //               fit: BoxFit.cover,
          //             ),
          //             Text(
          //               'Shift Off',
          //               textAlign: TextAlign.center,
          //               style: TextStyle(
          //                 fontSize: MediaQueryValues(context).fontSize,
          //                 fontWeight: FontWeight.w600,
          //                 color: Colors.black,
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          //       const SizedBox(height: 20),
          //       MaterialButton(
          //         onPressed: () {},
          //         child: Column(
          //           children: [
          //             svgIconNavigationBar2(
          //               path: 'assets/icons/main_screen/Vector-7.svg',
          //               color: Colors.black,
          //               width: MediaQueryValues(context).iconSizeWidth,
          //               height: MediaQueryValues(context).iconSizeWidth,
          //               fit: BoxFit.cover,
          //             ),
          //             Text(
          //               'Power Off',
          //               textAlign: TextAlign.center,
          //               style: TextStyle(
          //                 fontSize: MediaQueryValues(context).fontSize,
          //                 fontWeight: FontWeight.w600,
          //                 color: Colors.black,
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          //       const SizedBox(height: 20),
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }

  Column reightButtonBigScreen(
      {required double iconHeight,
      required double iconWidth,
      required double height,
      required String path,
      required String text}) {
    return Column(
      children: [
        svgIconNavigationBar(
            path: path,
            fit: BoxFit.cover,
            height: iconHeight * 0.4,
            width: iconWidth * 0.4,
            color: Colors.black),
        SizedBox(
          height: height * 0.01,
        ),
        FittedBox(
          child: DefaultTextStyle(
            style: TextStyle(
                fontSize: iconWidth * 0.2,
                fontWeight: FontWeight.w500,
                color: Colors.black),
            child: Text(
              text,
              // textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}

// Container navigationBarMainScreen(
//     {required double iconSize,
//     required double fontSize,
//     required double mediaHeight,
//     required BuildContext context}) {
//   return Container(
//     width: MediaQueryValues(context).navigationBarBigScreenwidth,
//     decoration: const BoxDecoration(
//       color: Colors.white,
//       boxShadow: [
//         BoxShadow(
//           color: Colors.black,
//           blurRadius: 10,
//           offset: Offset(2, 0),
//         ),
//       ],
//     ),
//     child: Column(
//       mainAxisAlignment: MainAxisAlignment.start,
//       children: [
//         const SizedBox(height: 10),
//         Expanded(
//           flex: 3,
//           child: SizedBox(
//             child: ListView(
//               padding: EdgeInsets.zero, // Set padding to zero
//               children: [
//                 svgIconNavigationBar(
//                     path: 'assets/icons/main_screen/Frame 17.svg',
//                     fit: BoxFit.cover,
//                     height: mediaHeight * 0.088 - 10,
//                     color: Colors.black),
//                 const SizedBox(height: 20),
//                 MaterialButton(
//                   onPressed: () {},
//                   child: Column(
//                     children: [
//                       svgIconNavigationBar2(
//                           path: 'assets/icons/main_screen/Vector.svg',
//                           color: Colors.black,
//                           width: iconSize *0.8 ,
//                           height: iconSize * 0.8,
//                           fit: BoxFit.cover),
//                       Text('Orders',
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                               fontSize: fontSize * 0.8,
//                               fontWeight: FontWeight.w600,
//                               color: Colors.black)),
//                     ],
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 MaterialButton(
//                   onPressed: () {},
//                   child: Column(
//                     children: [
//                       svgIconNavigationBar2(
//                           path: 'assets/icons/main_screen/Vector-1.svg',
//                           color: Colors.black,
//                           width: iconSize * 0.8,
//                           height: iconSize * 0.8,
//                           fit: BoxFit.cover),
//                       Text('Tables',
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                               fontSize: fontSize * 0.8,
//                               fontWeight: FontWeight.w600,
//                               color: Colors.black)),
//                     ],
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 MaterialButton(
//                   onPressed: () {},
//                   child: Column(
//                     children: [
//                       svgIconNavigationBar2(
//                           path: 'assets/icons/main_screen/Vector-2.svg',
//                           color: Colors.black,
//                           width: iconSize * 0.8,
//                           height: iconSize * 0.8,
//                           fit: BoxFit.cover),
//                       Text('Call Center',
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                               fontSize: fontSize * 0.8,
//                               fontWeight: FontWeight.w600,
//                               color: Colors.black)),
//                     ],
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 MaterialButton(
//                   onPressed: () {},
//                   child: Column(
//                     children: [
//                       svgIconNavigationBar2(
//                         path: 'assets/icons/main_screen/Vector-3.svg',
//                         color: Colors.black,
//                         width: iconSize * 0.8,
//                         height: iconSize * 0.8,
//                       ),
//                       Text('Delivery',
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                               fontSize: fontSize * 0.8,
//                               fontWeight: FontWeight.w600,
//                               color: Colors.black)),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//         Expanded(
//           flex: 2,
//           child: ListView(
//             shrinkWrap: true,
//             padding: EdgeInsets.zero,
//             children: [
//               MaterialButton(
//                 onPressed: () {},
//                 child: Column(
//                   children: [
//                     svgIconNavigationBar2(
//                       path: 'assets/icons/main_screen/Vector4.svg',
//                       color: Colors.black,
//                       width: iconSize * 0.8,
//                       height: iconSize * 0.8,
//                       fit: BoxFit.cover,
//                     ),
//                     Text(
//                       'Settings',
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                         fontSize: fontSize * 0.8,
//                         fontWeight: FontWeight.w600,
//                         color: Colors.black,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 20),
//               MaterialButton(
//                 onPressed: () {},
//                 child: Column(
//                   children: [
//                     svgIconNavigationBar2(
//                       path: 'assets/icons/main_screen/Vector-5.svg',
//                       color: Colors.black,
//                       width: iconSize * 0.8,
//                       height: iconSize * 0.8,
//                       fit: BoxFit.cover,
//                     ),
//                     Text(
//                       'Quick End',
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                         fontSize: fontSize * 0.8,
//                         fontWeight: FontWeight.w600,
//                         color: Colors.black,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 20),
//               MaterialButton(
//                 onPressed: () {},
//                 child: Column(
//                   children: [
//                     svgIconNavigationBar2(
//                       path: 'assets/icons/main_screen/Vector-6.svg',
//                       color: Colors.black,
//                       width: iconSize * 0.8,
//                       height: iconSize * 0.8,
//                       fit: BoxFit.cover,
//                     ),
//                     Text(
//                       'Shift Off',
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                         fontSize: fontSize * 0.8,
//                         fontWeight: FontWeight.w600,
//                         color: Colors.black,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 20),
//               MaterialButton(
//                 onPressed: () {},
//                 child: Column(
//                   children: [
//                     svgIconNavigationBar2(
//                       path: 'assets/icons/main_screen/Vector-7.svg',
//                       color: Colors.black,
//                       width: iconSize * 0.8,
//                       height: iconSize * 0.8,
//                       fit: BoxFit.cover,
//                     ),
//                     Text(
//                       'Power Off',
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                         fontSize: fontSize * 0.8,
//                         fontWeight: FontWeight.w600,
//                         color: Colors.black,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 20),
//             ],
//           ),
//         )
//       ],
//     ),
//   );
// }
