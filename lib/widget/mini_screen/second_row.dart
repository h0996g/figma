import 'package:figma/components/size.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class SecondRow extends StatelessWidget {
  const SecondRow({super.key});

  @override
  Widget build(BuildContext context) {
    double fontSize = MediaQueryValues(context).fontSize * 0.11;
    double iconSizeHeight1 = MediaQueryValues(context).iconSizeHeight * 1.3;
    double iconSizeWidth1 = MediaQueryValues(context).iconSizeWidth;
    double screenSizeWidthOnly1 = MediaQueryValues(context).onlyminiScreenWidth;
    double containerWidth = screenSizeWidthOnly1;
    double containerHeight = MediaQueryValues(context).height;

    return Row(
      children: [
        SizedBox(width: screenSizeWidthOnly1 * 0.02),

        _buildIconContainer2(
            height: containerHeight,
            iconSizeWidth: iconSizeWidth1,
            width: containerWidth,
            fontSize: fontSize,
            iconSizeHeight: iconSizeHeight1),
        // SizedBox(width: screenSizeWidth * 0.01),
        // Expanded(
        //     flex: 29,
        //     child:
        SizedBox(width: screenSizeWidthOnly1 * 0.03),

        Expanded(
          child: _buildDateTimeContainer2(
              iconSizeHeight: iconSizeHeight1,
              fontSize: fontSize,
              iconSizeWidth: iconSizeWidth1,
              height: containerHeight,
              width: containerWidth),
        ),
        SizedBox(width: screenSizeWidthOnly1 * 0.02),

        // // SizedBox(width: screenSize.width * 0.01),
      ],
    );
  }

  Widget _buildIconContainer2(
      {required double height,
      required double width,
      required double iconSizeWidth,
      required double iconSizeHeight,
      required double fontSize}) {
    return Container(
      height: height * 0.059,
      width: width * 0.14,
      // padding: EdgeInsets.all(height * 0.1),
      decoration: BoxDecoration(
        color: Colors.grey[200]!, // Background color for the main container
        borderRadius:
            BorderRadius.circular(5), // Border radius for the main container
      ),
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            bottom: 0,
            width: height * 0.14 * 0.05, // Adjust this width as needed
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.grey, // Color of the left part
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), // Top-left radius
                  bottomLeft: Radius.circular(10), // Bottom-left radius
                ),
              ),
            ),
          ),
          Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Icon(Icons.group, size: iconSize * 0.8),
              SvgPicture.asset(
                'assets/icons/mini_screen/main_screen/users.svg',
                width: iconSizeWidth,
                height: iconSizeHeight * 0.6,
                // color: Colors.grey,
              ),

              Text('4',
                  style: TextStyle(
                      fontSize: fontSize, fontWeight: FontWeight.bold)),
            ],
          )),
        ],
      ),
    );
  }

  Widget _buildDateTimeContainer2(
      {required double height,
      required double fontSize,
      required double iconSizeHeight,
      required double iconSizeWidth,
      required double width}) {
    return Container(
      height: height * 0.059,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        children: [
          // Top purple part
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: height * 0.059 * 0.25,
              ),
              decoration: const BoxDecoration(
                color: Color.fromRGBO(155, 81, 224, 0.15),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5),
                  topRight: Radius.circular(5),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/mini_screen/person1.svg',
                        width: iconSizeWidth,
                        height: iconSizeHeight * 0.45,
                      ),
                      SizedBox(width: width * 0.02),
                      Text(
                        'Abdessamed bouazza',
                        style: TextStyle(
                            fontSize: fontSize * 0.75,
                            fontWeight: FontWeight.w800,
                            color: const Color.fromRGBO(155, 81, 224, 1)),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/mini_screen/Vector-2.svg',
                        width: iconSizeWidth,
                        height: iconSizeHeight * 0.45,
                      ),
                      SizedBox(width: width * 0.03),
                      SvgPicture.asset(
                        'assets/icons/mini_screen/Vector-3.svg',
                        width: iconSizeWidth,
                        height: iconSizeHeight * 0.45,
                      ),
                      SizedBox(width: width * 0.03),
                      SvgPicture.asset(
                        'assets/icons/mini_screen/Vector-4.svg',
                        width: iconSizeWidth,
                        height: iconSizeHeight * 0.45,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          // Bottom grey part
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: height * 0.059 * 0.25,
              ),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                ),
              ),
              child: Row(
                children: [
                  Text('By',
                      style: TextStyle(
                          fontSize: fontSize * 0.7,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey)),
                  const SizedBox(width: 5),
                  Text('Abdesssmed bouazza',
                      style: TextStyle(
                          fontSize: fontSize * 0.65,
                          fontWeight: FontWeight.w600,
                          // background: rgba(32, 33, 46, 1);

                          color: Colors.grey)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
