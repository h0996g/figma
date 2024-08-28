import 'package:figma/components/size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// (double screenSizeWidthOnly1, double iconSize,
//     double containerHeight, double fontSize)

class FirstRow extends StatelessWidget {
  const FirstRow({super.key});

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
        _buildIconContainer(
            containerHeight: containerHeight,
            iconSizeWidth: iconSizeWidth1,
            iconSizeHeight: iconSizeHeight1,
            containerWidth: containerWidth),
        SizedBox(width: screenSizeWidthOnly1 * 0.03),
        _buildInfoContainer(
            height: containerHeight,
            width: containerWidth,
            fontSize: fontSize,
            title: 'C10',
            subtitle: '#464646'),
        SizedBox(width: screenSizeWidthOnly1 * 0.03),
        // _buildInfoContainer(containerHeight, fontSize, 'C10', '#464646'),
        // SizedBox(width: screenSizeWidthOnly1 * 0.03),
        // Expanded(
        //     flex: 17,
        //     child:
        Flexible(
          child: _buildDateTimeContainer(
              height: containerHeight,
              width: containerWidth,
              fontSize: fontSize),
        )
        // // _buildIconContainer(containerHeight, iconSizeWidth1, iconSizeHeight1),

        // ),

        ,
        SizedBox(width: screenSizeWidthOnly1 * 0.03),
        // Expanded(
        //     flex: 5,
        //     child:
        // ,
        _buildDeleteContainer(
            height: containerHeight,
            iconSize: iconSizeHeight1,
            width: containerWidth),
        SizedBox(width: screenSizeWidthOnly1 * 0.02),

        // ),
      ],
    );
  }

  Widget _buildIconContainer({
    required double containerHeight,
    required double containerWidth,
    required double iconSizeWidth,
    required double iconSizeHeight,
  }) {
    return Container(
      height: containerHeight * 0.059,
      width: containerWidth * 0.14,
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
            width: containerHeight * 0.14 * 0.05, // Adjust this width as needed
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

          // Content on top of the colored parts
          Center(
            child: SvgPicture.asset(
              'assets/icons/chess.svg',
              width: iconSizeWidth,
              height: iconSizeHeight * 0.8,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoContainer(
      {required double height,
      required double width,
      required double fontSize,
      required String title,
      required String subtitle}) {
    return Container(
      height: height * 0.059,
      width: width * 0.21,
      padding: EdgeInsets.symmetric(
        horizontal: height * 0.059 * 0.1,
      ),
      decoration: BoxDecoration(
        color: Colors.grey[200]!, // Background color for the main container
        borderRadius:
            BorderRadius.circular(5), // Border radius for the main container
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('$title ',
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: fontSize * 1.001)),
          Text(subtitle, style: TextStyle(fontSize: fontSize)),
        ],
      ),
    );
  }

  Widget _buildDateTimeContainer(
      {required double height,
      required double width,
      required double fontSize}) {
    return Container(
      height: height * 0.059,
      width: width * 0.38,
      padding: EdgeInsets.symmetric(
        horizontal: height * 0.059 * 0.1,
      ),
      decoration: BoxDecoration(
        color: Colors.grey[200]!, // Background color for the main container
        borderRadius:
            BorderRadius.circular(5), // Border radius for the main container
      ),
      child: FittedBox(
        child: Column(
          // mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,

          // crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text('Today',
                    style: TextStyle(
                        fontSize: fontSize, fontWeight: FontWeight.w600)),
                SizedBox(width: width * 0.38 * 0.3),
                Text('08:16',
                    style: TextStyle(
                        fontSize: fontSize,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey.shade700),
                    textAlign: TextAlign.end),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Ready on', style: TextStyle(fontSize: fontSize * 0.8)),
                // SizedBox(width: height * 0.1),
                Container(
                  width: width * 0.384 * 0.39,
                  height: height * 0.059 * 0.5,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 5,
                  ),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(33, 150, 83, 1),
                    // background: rgba(33, 150, 83, 1);
                    //
                    borderRadius: BorderRadius.circular(height * 0.2),
                  ),
                  child: Center(
                    child: Text('50 Min',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: fontSize * 0.8,
                            fontWeight: FontWeight.bold)),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDeleteContainer(
      {required double height,
      required double width,
      required double iconSize}) {
    return Container(
      height: height * 0.059,
      width: width * 0.14,
      // padding: EdgeInsets.all(
      //   height * 0.2,
      // ),
      decoration: BoxDecoration(
        color: Colors.red[100]!.withOpacity(0.5),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: Icon(
          Icons.clear,
          color: Colors.red,
          size: width * 0.12,
        ),
      ),
    );
  }
}
