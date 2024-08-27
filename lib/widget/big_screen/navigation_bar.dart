import 'package:figma/components/components.dart';
import 'package:figma/components/size.dart';
import 'package:flutter/material.dart';

class NavigationBarMainScreen extends StatelessWidget {
  const NavigationBarMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQueryValues(context).navigationBarBigScreenwidth,
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
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          Expanded(
            flex: 3,
            child: SizedBox(
              child: ListView(
                padding: EdgeInsets.zero, // Set padding to zero
                children: [
                  svgIconNavigationBar(
                      path: 'assets/icons/main_screen/Frame 17.svg',
                      fit: BoxFit.cover,
                      height: MediaQueryValues(context).height * 0.088 - 10,
                      color: Colors.black),
                  const SizedBox(height: 20),
                  MaterialButton(
                    onPressed: () {},
                    child: Column(
                      children: [
                        svgIconNavigationBar2(
                            path: 'assets/icons/main_screen/Vector.svg',
                            color: Colors.black,
                            width: MediaQueryValues(context).iconSizeWidth,
                            height: MediaQueryValues(context).iconSizeWidth,
                            fit: BoxFit.cover),
                        Text('Orders',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: MediaQueryValues(context).fontSize,
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
                            width: MediaQueryValues(context).iconSizeWidth,
                            height: MediaQueryValues(context).iconSizeWidth,
                            fit: BoxFit.cover),
                        Text('Tables',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: MediaQueryValues(context).fontSize,
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
                            width: MediaQueryValues(context).iconSizeWidth,
                            height: MediaQueryValues(context).iconSizeWidth,
                            fit: BoxFit.cover),
                        Text('Call Center',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: MediaQueryValues(context).fontSize,
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
                          width: MediaQueryValues(context).iconSizeWidth,
                          height: MediaQueryValues(context).iconSizeWidth,
                        ),
                        Text('Delivery',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: MediaQueryValues(context).fontSize,
                                fontWeight: FontWeight.w600,
                                color: Colors.black)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              children: [
                MaterialButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      svgIconNavigationBar2(
                        path: 'assets/icons/main_screen/Vector4.svg',
                        color: Colors.black,
                        width: MediaQueryValues(context).iconSizeWidth,
                        height: MediaQueryValues(context).iconSizeWidth,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        'Settings',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: MediaQueryValues(context).fontSize,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                MaterialButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      svgIconNavigationBar2(
                        path: 'assets/icons/main_screen/Vector-5.svg',
                        color: Colors.black,
                        width: MediaQueryValues(context).iconSizeWidth,
                        height: MediaQueryValues(context).iconSizeWidth,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        'Quick End',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: MediaQueryValues(context).fontSize,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
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
                        width: MediaQueryValues(context).iconSizeWidth,
                        height: MediaQueryValues(context).iconSizeWidth,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        'Shift Off',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: MediaQueryValues(context).fontSize,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                MaterialButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      svgIconNavigationBar2(
                        path: 'assets/icons/main_screen/Vector-7.svg',
                        color: Colors.black,
                        width: MediaQueryValues(context).iconSizeWidth,
                        height: MediaQueryValues(context).iconSizeWidth,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        'Power Off',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: MediaQueryValues(context).fontSize,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          )
        ],
      ),
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
