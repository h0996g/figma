import 'package:flutter/material.dart';

class LabeledBorder extends StatelessWidget {
  final String rightLabel;
  final String bottomLabel;
  final Widget child;
  final double height;
  final double width;

  const LabeledBorder({
    super.key,
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
      children: <Widget>[
        Container(
          width: width, // Adjust as needed
          height: height, // Adjust as needed
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.orange,
            ),
            borderRadius: BorderRadius.circular(3),
            // borderRadius:
          ),
          child: Center(child: child),
        ),

        // Right label
        Positioned(
          right: -5,
          top: 0,
          bottom: 0,
          child: Center(
            child: RotatedBox(
              quarterTurns: 1,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                color: Theme.of(context).scaffoldBackgroundColor,
                child: Text(
                  rightLabel,
                  style: const TextStyle(fontSize: 6),
                ),
              ),
            ),
          ),
        ),
        // Bottom label
        Positioned(
          left: 0,
          right: 0,
          bottom: -6,
          child: Center(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              color: Theme.of(context).scaffoldBackgroundColor,
              child: Text(
                bottomLabel,
                style: const TextStyle(fontSize: 7),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
