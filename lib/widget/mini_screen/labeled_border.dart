import 'package:flutter/material.dart';

class LabeledBorder extends StatelessWidget {
  final bool isFrezze;
  final String rightLabel;
  final String bottomLabel;
  final Widget child;
  final double height;
  final double width;

  const LabeledBorder({
    super.key,
    required this.isFrezze,
    required this.rightLabel,
    required this.bottomLabel,
    required this.child,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        Container(
          width: width, // Adjust as needed
          height: height, // Adjust as needed
          decoration: BoxDecoration(
            border: Border.all(
              color: isFrezze ? Colors.blue : Colors.orange,
            ),
            borderRadius: BorderRadius.circular(3),
            // borderRadius:
          ),
          child: Center(child: child),
        ),

        // Right label
        // Positioned(
        //   // right: -height * 0.16,
        //   // top: 0,
        //   // bottom: 0,
        //   child: Center(
        //     child: Container(
        //       width: width * 0.4,
        //       height: height * 0.4,
        //       padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
        //       color: isFrezze
        //           ? const Color.fromRGBO(224, 236, 252, 1)
        //           : Colors.grey[100]!.withOpacity(0.7),
        //       child: FittedBox(
        //         // fit: BoxFit.fill,
        //         child: Text(
        //           rightLabel,
        //           style: TextStyle(fontSize: width * 0.15),
        //         ),
        //       ),
        //     ),
        //   ),
        // ),

        // Bottom label
        Positioned(
          // left: 0,
          // right: 0,
          bottom: -height * 0.16,
          // bottom: -5,
          child: Center(
            child: Container(
              width: width * 0.4,
              height: height * 0.4,
              // padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              color: isFrezze
                  ? const Color.fromRGBO(224, 236, 252, 1).withOpacity(0.4)
                  : Colors.grey[100]!.withOpacity(0.7),
              child: FittedBox(
                // fit: BoxFit.fill,
                child: Text(
                  bottomLabel,
                  style: const TextStyle(fontSize: 7),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
